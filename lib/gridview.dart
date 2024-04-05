import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text("My GridView"),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        crossAxisCount: 2,
        children: List.generate(
          20,
          (index) {
            return Container(
              color: Colors.blue[100 * (index % 10)],
              child: Center(
                child: Text('Level $index'),
              ),
            );
          },
        ),
      ),
    );
  }
}
