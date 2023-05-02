import 'package:flutter/material.dart';

class Article {
  late String title;
  late String urlToImage;
  late String url;
  Article({required this.title,
   required this.urlToImage, 
   required this.url});
  static Article fromJSON(dynamic Map) {
    return Article(
        title: Map['title'],
        urlToImage: Map['urlToImage'] ??
            'https://cdn-icons-png.flaticon.com/512/21/21601.png ',
        url: Map['url']);
  }
}
