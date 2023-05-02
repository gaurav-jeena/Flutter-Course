
import 'package:grocery_app/pages/layout.dart';
import 'package:grocery_app/pages/grocery.dart';
import 'pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: GroceryApp() // home: SafeArea(child: Text("Hello")),
      ));
}

