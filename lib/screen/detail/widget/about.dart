import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(
            'Lake Louise is world famous for the vivid turquoise\n'
            ' of its waters,the Victoria Glacier,soaring mountain\n'
            ' backdrop,palatial hotel,and incredible hiking ...',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 15, height: 1.5, color: Colors.grey),
          ),
          SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Theme.of(context).primaryColor))),
            child: Text(
              'Read More',
              style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
