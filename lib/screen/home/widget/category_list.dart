import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  final categoryList = [
    'Now',
    'Popular',
    'Most Viewed',
    'All place',
    'Near You'
  ];
  int currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelected = index;
                  });
                },
                child: Text(
                  categoryList[index],
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: currentSelected == index
                          ? FontWeight.bold
                          : FontWeight.w500,
                      color: currentSelected == index
                          ? Theme.of(context).primaryColor
                          : Colors.grey),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 20,
              ),
          itemCount: categoryList.length),
    );
  }
}
