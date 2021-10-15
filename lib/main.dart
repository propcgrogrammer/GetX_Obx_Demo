import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MaterialApp(
    home: new StateObxWidget(),
  ));
}

class StateObxWidget extends StatelessWidget {
  RxInt count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo for Obx'),
      ),
      body: Row(
        children: <Widget>[
          IconButton(
              onPressed: () {
                count.value--;
              },
              icon: Icon(Icons.remove)),
          Obx(() => Text(count.toString())),
          IconButton(
              onPressed: () {
                count.value++;
              },
              icon: Icon(Icons.add)),
        ],
      ),
    );
  }
}
