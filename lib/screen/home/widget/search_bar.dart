import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3))
          ]),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Container(
              padding: EdgeInsets.all(10),
              child: SvgPicture.asset(
                'assets/icons/search.svg',
                width: 24,
              ),
            ),
            border: InputBorder.none,
            hintText: 'Search here...'),
      ),
    );
  }
}
