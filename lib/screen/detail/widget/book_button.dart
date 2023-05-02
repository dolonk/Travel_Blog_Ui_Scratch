
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 30,top: 30),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
        ),
        onPressed: (){
        },
        child: Text('Book Now',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),),
      ),
    );
  }
}
