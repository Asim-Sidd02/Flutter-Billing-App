import 'package:ambica/pages/add_client.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ambica/pages/get_bill.dart';
import 'package:ambica/pages/add_client.dart';
import 'package:ambica/pages/old_recipt.dart';


void main() => runApp( MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      routes: {
        '/page1': (_) => get_bill(),
        '/page2': (_) => add_client(),
        '/page3': (_) => old_receipt(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Ambica Chemical & Minerals'),
      ),

      backgroundColor: Colors.blueGrey,


      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {
                  Get.toNamed('/page1');
                },
                child: const Text(
                  'Get Bill',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {
                  Get.toNamed('/page2');
                },
                child: const Text(
                  'Add Client',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {
                  Get.toNamed('/page3');
                },
                child: const Text(
                  'Old Receipt',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}






