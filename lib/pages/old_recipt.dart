import 'package:flutter/material.dart';

class old_receipt extends StatelessWidget {
  const old_receipt({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Old Receipt'),
      ),
      body: const Center(
        child: Text('Receipt Page'),
      ),
    );
  }
}