import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text("My ListView"),
      ),
      // Ketika menggunakan ListView biasa
      // body: ListView(
      //   padding: const EdgeInsets.all(10.0),
      //   children: [
      //     Container(child: const Text("Level 1"), height: 100,),
      //     Container(child: const Text("Level 2"), height: 100,),
      //     Container(child: const Text("Level 3"), height: 100,),
      //     Container(child: const Text("Level 4"), height: 100,),
      //     Container(child: const Text("Level 5"), height: 100,),
      //     Container(child: const Text("Level 6"), height: 100,),
      //     Container(child: const Text("Level 7"), height: 100,),
      //     Container(child: const Text("Level 8"), height: 100,),
      //     Container(child: const Text("Level 9"), height: 100,),
      //     Container(child: const Text("Level 10"), height: 100,),
      //   ],
      // ),

      body: ListView.separated(
        padding: const EdgeInsets.all(10.0),
        itemCount: items.length,
        itemBuilder: (BuildContext ctx, int index) {
          // ignore: sized_box_for_whitespace
          return Container(
            height: 100,
            child: Text('Level ${items[index]}'),
          );
        },
        separatorBuilder: (BuildContext ctx, int index) =>
            const Divider(color: Colors.black),
      ),
    );
  }
}
