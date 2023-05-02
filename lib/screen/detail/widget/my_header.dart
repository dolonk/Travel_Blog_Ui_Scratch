import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  final String imageUrl;

  const MyHeader(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
              left: 25,
              top: MediaQuery.of(context).padding.top,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: EdgeInsets.only(left: 5,top: 5,bottom: 5,right: 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white
                  ),
                  child: Icon(Icons.arrow_back_ios_new),
                ),
              )),
          Positioned(
            right: 30,
              bottom: 16,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(36)
                ),
                child: Icon(Icons.favorite_border,color: Colors.red,),
              ))
        ],
      ),
    );
  }
}
