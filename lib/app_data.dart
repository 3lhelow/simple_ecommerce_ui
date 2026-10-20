import 'package:flutter/material.dart';

class AppData {

  static List<Map<String, dynamic>> categories = [
    {"icon" : Icons.laptop_mac, "title": "laptop"},
    {"icon" : Icons.phone_iphone, "title": "phone"},
    {"icon" : Icons.keyboard, "title": "keyboard"},
    {"icon" : Icons.mouse, "title": "mouse"},
    {"icon" : Icons.speaker, "title": "speaker"},
    {"icon" : Icons.monitor, "title": "monitor"},
  ];

  static List<Map<String, dynamic>> bestSelling = [
    {"image" : "images/headphone.png", "title": "headphone", "subtitle": "the beset headphone", "price": 800.0},
    {"image" : "images/watch.png", "title": "watch", "subtitle": "the beset smart watch", "price": 250.0},
    {"image" : "images/keyboard.png", "title": "keyboard", "subtitle": "the beset keyboard", "price": 150.0},
    {"image" : "images/speaker.png", "title": "speaker", "subtitle": "the beset speaker", "price": 180.0},
    {"image" : "images/MacBook.png", "title": "laptop", "subtitle": "MacBook Air M2", "price": 1000.0},
    {"image" : "images/iphone-xs.png", "title": "iphone xs", "subtitle": "the beset iphone", "price": 100.0},
  ];

}


