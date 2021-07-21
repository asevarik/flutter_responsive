import 'package:flutter/material.dart';

class Floating_Tile extends StatelessWidget {
  const Floating_Tile({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
          padding: EdgeInsets.only(
            top: screenSize.height * 0.43,
            left: screenSize.width / 5,
            right: screenSize.width / 5,
          ),
          child: Card(
            elevation: 40.0,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Destination",
                  ),
                  Text("|"),
                  Text("Dates"),
                  Text("|"),
                  Text("People"),
                  Text("|"),
                  Text("Experience"),
                ],
              ),
            ),
          )),
    );
  }
}
