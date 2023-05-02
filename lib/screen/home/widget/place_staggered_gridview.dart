import 'package:flutter/cupertino.dart';
import 'package:travel_blog_ui/model/place.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travel_blog_ui/screen/home/widget/place_items.dart';

class PlaceStaggerdGridView extends StatelessWidget {
  final placeList = Place.generatePlaces();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: MasonryGridView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: placeList.length,
          itemBuilder: (context, index) => PlaceItems(placeList[index]),
        ));
  }
}
