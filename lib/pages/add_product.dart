import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final _units = ['kg','liter','unit'];
  late String _selectedUnit;



  @override
  void initState() {
    super.initState();
    _selectedUnit = _units[0];
  }



  @override
  Widget build(BuildContext context) {
    final productNameController = TextEditingController();
    final productPriceController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Product"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: productNameController,
              decoration: const InputDecoration(
                labelText: "Product Name",
              ),
            ),
            TextField(
              controller: productPriceController,
              decoration: const InputDecoration(
                labelText: "Product Price",
              ),
              keyboardType: TextInputType.number,
            ),
            DropdownButton(
                value: _units.contains(_selectedUnit) ? _selectedUnit : _units[0],
                items: _units.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedUnit = value!;
                  });
                }),
            ElevatedButton(
              onPressed: () async {
                final productName = productNameController.text;
                final productPrice = double.parse(productPriceController.text);

                // Initialize Firebase
                await Firebase.initializeApp();
                final databaseReference = FirebaseDatabase.instance.reference();

                // Store data on Firebase
                await databaseReference.child("products").push().set({
                  "name": productName,
                  "price": productPrice,
                  "unit": _selectedUnit
                });

                Get.snackbar("Data Saved", "The product was added successfully",
                    snackPosition: SnackPosition.TOP);
                Get.off(context);
              },
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
