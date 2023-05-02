import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_blog_ui/screen/detail/detail.dart';

import '../../../model/place.dart';

class PlaceItems extends StatelessWidget {
  final Place place;
  PlaceItems(this.place);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailPage(place),
        ));
      },
      child: Stack(children: [
        Container(
          alignment: Alignment.bottomLeft,
          height: place.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  image: AssetImage(
                    place.imageUrl,
                  ),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: place.height,
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.black.withAlpha(0),
                Colors.black.withAlpha(0),
                Colors.black.withAlpha(0),
                Colors.black12,
                Colors.black87
              ])),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  place.title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(place.subtitle,
                    style: TextStyle(fontSize: 14, color: Colors.white)),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
