import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_blog_ui/screen/home/widget/category_list.dart';
import 'package:travel_blog_ui/screen/home/widget/place_staggered_gridview.dart';
import 'package:travel_blog_ui/screen/home/widget/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: buildAppBar(context),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Explore the World\n with us!',
                style: TextStyle(
                    fontFamily: 'Georgia',
                    height: 1.3,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            CategoryList(),
            PlaceStaggerdGridView()
          ],
        )));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).backgroundColor,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/menu.svg',
          width: 24,
        ),
      ),
      actions: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 2),
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(8)),
          child: Image.asset(
            'assets/images/woman.png',
            width: 40,
          ),
        )
      ],
    );
  }
}
