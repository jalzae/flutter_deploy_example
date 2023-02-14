import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

var count = 0.obs;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: InkWell(
              onTap: () {
                count++;
                print(count);
              },
              child: Obx(() => Text(count.toString()))),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            count++;
          },
          child: Icon(Icons.plus_one),
        ),
      ),
    );
  }
}
