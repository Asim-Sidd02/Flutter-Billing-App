import 'package:flutter/material.dart';
import 'package:ambica/pages/add_client.dart';
import 'package:ambica/pages/add_product.dart';


import 'package:get/get.dart';


class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(


        title: const Text('Home'),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor:  const Color(0xE4FFFFFF),



      body: GridView.extent(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 8,
        maxCrossAxisExtent: 200.0,
        children: [
          Container(


            width: 150,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),

            ),
            margin: const EdgeInsets.all(10),
             child: TextButton(

              onPressed: () {
                Get.toNamed('/page1');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                // Replace with a Row for horizontal icon + text
                children: const <Widget>[

                  Icon(Icons.receipt_long,color: Colors.black38),
                  Text("Get bill",style: TextStyle(color: Colors.black54, fontSize: 20),),




                ],
              ),
            ),
          ),
          Container(
            width: 200,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {
                Get.off(const CompanyInputScreen());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                // Replace with a Row for horizontal icon + text
                children: const <Widget>[

                  Icon(Icons.add_circle_outline,color: Colors.black38),
                  Text("Add Client",style: TextStyle(color: Colors.black54, fontSize: 20),),




                ],
              ),
            ),
          ),
          Container(
            width: 200,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                // Replace with a Row for horizontal icon + text
                children: const <Widget>[

                  Icon(Icons.receipt,color: Colors.black38),
                  Text("Old Receipts",style: TextStyle(color: Colors.black54, fontSize: 20),),




                ],
              ),
            ),
          ),

          Container(

            width: 150,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),

            ),
            margin: const EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {
                Get.off(const AddProduct());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                // Replace with a Row for horizontal icon + text
                children: const <Widget>[

                  Icon(Icons.add_box_outlined,color: Colors.black38),
                  Text("Add Product",style: TextStyle(color: Colors.black54, fontSize: 20),),




                ],
              ),
            ),
          ),
          Container(
            width: 200,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {
                Get.to('title');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,


                // Replace with a Row for horizontal icon + text
                children: const <Widget>[



                  Icon(Icons.settings,color: Colors.black38,size: 30),
                  Text("Settings",style: TextStyle( color: Colors.black54, fontSize: 20),textAlign: TextAlign.justify),




                ],
              ),
            ),
          ),
          Container(
            width: 200,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                // Replace with a Row for horizontal icon + text
                children: const <Widget>[

                  Icon(Icons.logout,color: Colors.black38),
                  Text("Logout",style: TextStyle(color: Colors.black54, fontSize: 20),),




                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}







