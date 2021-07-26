import 'package:flutter/material.dart';
import 'bottom_bar_column.dart';
import 'info_text.dart';

class BottomBarMobile extends StatelessWidget {
  final screenSize;
  BottomBarMobile({this.screenSize});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.blueGrey[900],
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomBarColumn(
                heading: 'ABOUT',
                s1: 'Contact Us',
                s2: 'About Us',
                s3: 'Careers',
              ),
              BottomBarColumn(
                heading: 'HELP',
                s1: 'Payment',
                s2: 'Cancellation',
                s3: 'FAQ',
              ),
              BottomBarColumn(
                heading: 'SOCIAL',
                s1: 'Twitter',
                s2: 'Facebook',
                s3: 'YouTube',
              ),
              // Container(
              //   color: Colors.blueGrey,
              //   width: 2,
              //   height: 150,
              // ),
              
            ],
          ),
          Divider(
            color: Colors.blueGrey,
          ),
          Padding(
            padding: EdgeInsets.only(left:screenSize.width/4),
            child: InfoText(
              type: 'Email',
              text: 'asevarik@gmail.com',
              ),
          ),

          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.only(left:screenSize.width/5),
            child: InfoText(
              type: 'Address',
              text: '128,baap road ,baapnagar',
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Copyright © 2021 | Abhishek',
            style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}