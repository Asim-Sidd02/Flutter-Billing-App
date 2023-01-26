import 'package:flutter/material.dart';



class BillPage extends StatefulWidget {
  @override
  _BillPageState createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  late String _description;
  late String _hsnCode;
  late String _uomCode;
  late int _quantity;
  late double _rate;
  late double _amount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bill Maker'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: 'Description'),
              onChanged: (value) {
                setState(() {
                  _description = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: 'HSN Code'),
              onChanged: (value) {
                setState(() {
                  _hsnCode = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: 'UOM Code'),
              onChanged: (value) {
                setState(() {
                  _uomCode = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Quantity'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _quantity = int.parse(value);
                });
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Rate'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _rate = double.parse(value);
                });
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            Text('Amount: $_amount'),
            TextButton(
              onPressed: _calculateAmount,
              child: Text('Calculate Amount'),
            ),
          ],
        ),
      ),
    );
  }

  void _calculateAmount() {
    setState(() {
      _amount = _quantity * _rate;
    });
  }
}
