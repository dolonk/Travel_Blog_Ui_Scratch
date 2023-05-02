import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Place {
  String title;
  String subtitle;
  String imageUrl;
  double height;

  Place(this.title, this.subtitle, this.imageUrl, this.height);

  static List<Place> generatePlaces() {
    return [
      Place('Rain Forest', 'Costa Rica', 'assets/images/bg1.jpg', 240),
      Place('Lake Louise', 'Costa Rica', 'assets/images/bg2.jpg', 240),
      Place('Plitivice lakes', 'Costa Rica', 'assets/images/bg3.jpg', 240),
      Place('Rain Forest', 'Costa Rica', 'assets/images/bg4.jpg', 240),
    ];
  }
}


