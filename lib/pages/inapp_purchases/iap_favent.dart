import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:favent/src/utils/screen_size.dart';
import 'package:favent/Theme/colors.dart';

final DFFont= 'Josefin';

class buypoints extends StatefulWidget {
  @override
  _buypointsState createState() => _buypointsState();
}

class _buypointsState extends State<buypoints> {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body:
      ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 70,
        ),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Buy Favor Points',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: DFFont,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Purchase Options',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    inherit: true,
                    fontFamily: DFFont,
                    letterSpacing: 0.4
                ),
              ),
              Column(
                children: <Widget>[
                  colorCard('100 Points', '₹15','', context, Colors.green),
                  colorCard('200 Points', '₹25','', context, Colors.orangeAccent),
                  colorCard('500 Points', '₹45', '' , context, Colors.blue),
                  colorCard('1000 Points', '₹85','', context, Colors.redAccent),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget colorCard(
    String amount, String price, String link, BuildContext context, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
    constraints: BoxConstraints(minHeight: 90),
    margin: EdgeInsets.only(top: 15),
    height: screenAwareSize(70, context),
    width: _media.width - 60,
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: color.withOpacity(0.4),
              blurRadius: 16,
              spreadRadius: 0.2,
              offset: Offset(0, 8)),
        ]),
    child: Material(
      borderRadius: BorderRadius.circular(15),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: (){

        },
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.monetization_on,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    amount,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: DFFont
                    ),
                  ),
                ],
              ),
              Text(
                price,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: DFFont
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}