import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class CompanyInputScreen extends StatelessWidget {
  const CompanyInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final companyNameController = TextEditingController();
    final stateController = TextEditingController();
    final stateCodeController = TextEditingController();
    final gstController = TextEditingController();
    final gstNumberController = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Company"),
        ),
        body: Padding(
        padding: const EdgeInsets.all(16.0),
    child: Column(
    children: [
    TextField(
    controller: companyNameController,
    decoration: const InputDecoration(
    labelText: "Company Name",
    ),
    ),
    TextField(
    controller: stateController,
    decoration: const InputDecoration(
    labelText: "State",
    ),
    ),
    TextField(
    controller: stateCodeController,
    decoration: const InputDecoration(
    labelText: "State Code",
    ),
    ),
    TextField(
    controller: gstController,
    decoration: const InputDecoration(
    labelText: "GST",
    ),
    ),
      TextField(
        controller: gstNumberController,
        decoration: const InputDecoration(
          labelText: "GST Number",
        ),
      ),
      ElevatedButton(
        child: const Text("Save"),
        onPressed: () async {
          final companyName = companyNameController.text;
          final state = stateController.text;
          final stateCode = stateCodeController.text;
          final gst = gstController.text;
          final gstNumber = gstNumberController.text;

          // Initialize Firebase
          await Firebase.initializeApp();
          final databaseReference = FirebaseDatabase.instance.reference();

          // Store data on Firebase
          await databaseReference.child("client").push().set({
            "name": companyName,
            "state": state,
            "state_code": stateCode,
            "gst": gst,
            "gst_number": gstNumber,
          });

          Get.snackbar("Success", "Company added successfully!",
              snackPosition: SnackPosition.BOTTOM);
        },
      ),
    ],
    ),
        ),
    );
  }
}