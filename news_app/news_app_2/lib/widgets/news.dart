import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class News extends StatelessWidget {
  late String title;
  late String url;

  News({required this.title, required this.url});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Container(
          width: 150,
          height: 400,
          color: Colors.grey,
          child: Image.network(url),
        ),
        Text(title)
      ],
    ));
  }
}