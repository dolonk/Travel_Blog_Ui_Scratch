
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_blog_ui/model/place.dart';
import 'package:travel_blog_ui/screen/detail/widget/about.dart';
import 'package:travel_blog_ui/screen/detail/widget/book_button.dart';
import 'package:travel_blog_ui/screen/detail/widget/featureList.dart';
import 'package:travel_blog_ui/screen/detail/widget/my_header.dart';
import 'package:travel_blog_ui/screen/detail/widget/place_name.dart';

class DetailPage extends StatelessWidget {
  final Place place;

  DetailPage(this.place);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyHeader(place.imageUrl),
            PlaceName(place.title,place.subtitle),
            AboutInfo(),
            FeatureList(),
            BookButton()
          ],
        )
      ),
    );
  }
}
