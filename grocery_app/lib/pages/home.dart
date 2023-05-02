import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../widgets/box.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.email), Icon(Icons.phone)],
        leading: Icon(
          Icons.menu,
          size: 40,
        ),
        elevation: 10,
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text('My App'),
      ),
      body: Box(),
      backgroundColor: Colors.amberAccent,
    );
  }
}
