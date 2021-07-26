import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_responsive_project/utils/floating_modals.dart';

class Floating_Tile_Column extends StatelessWidget {
  Floating_Tile_Column({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;
  final List<Floating_Modals> data=[
                  Floating_Modals(headicon: Icons.pin_drop, title: 'Destination'),
                  Floating_Modals(headicon: Icons.calendar_today_rounded,title: 'Dates'),
                  Floating_Modals(headicon: Icons.group_rounded, title: 'People'),
                  Floating_Modals(headicon: Icons.icecream_sharp, title: 'Exprience'),

        ];
  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
          padding: EdgeInsets.only(
            top: screenSize.height * 0.43,
            left: screenSize.width / 8,
            right: screenSize.width / 8,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Resusabe_card(data: data[0]),
              Resusabe_card(data: data[1]),
              Resusabe_card(data: data[2]),
              Resusabe_card(data: data[3]),
              
            ],
          ),
            ),
          );
  }
}

class Resusabe_card extends StatelessWidget {
  const Resusabe_card({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Floating_Modals data;

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Card(
        elevation: 50.0,
        color: Colors.white,
        child: Container(
          
          padding: const EdgeInsets.all(20.0),
          child:Resuable_tile(data: data),
          )
          ),
    );
  }
}

class Resuable_tile extends StatelessWidget {
  const Resuable_tile({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Floating_Modals data;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Icon(data.headicon),
        title: Text(data.title,style: TextStyle(fontSize: 25,color: Colors.grey.shade700),),
      ),
    );
  }
}
