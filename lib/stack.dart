import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text("My Stack"),
      ),
      // body: Stack(
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 90,
      //       height: 90,
      //       color: Colors.green,
      //     ),
      //     Container(
      //       width: 80,
      //       height: 80,
      //       color: Colors.blue,
      //     ),
      //   ],
      // ),

      body: Container(
        margin: const EdgeInsets.only(top: 50),
        width: 250,
        height: 300,
        color: Colors.blue,
        child: Stack(
          children: [
            Positioned(
              left: 50,
              top: 100,
              child: Container(
                color: Colors.yellow,
                padding: const EdgeInsets.all(10),
                child: const Text("Lorem Ipsum"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
