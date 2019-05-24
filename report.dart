import 'package:flutter/material.dart';
import 'package:favent/Theme/colors.dart';
import 'package:favent/pages/homepage.dart';
import 'package:favent/pages/profile.dart';
import 'package:favent/pages/dashboard.dart';
import 'package:favent/pages/favors/reqCategories.dart';
import 'package:favent/pages/authentication/login.dart';
import 'package:favent/pages/inapp_purchases/iap_favent.dart';
import 'package:favent/src/utils/screen_size.dart';

final DFFont= 'Josefin';

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
       body: Container(

       child: ListView(

        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(
           left: 20,
           right: 20,
           top: 70

        ), children: <Widget>[
          Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                   Text(
                       'Report User',
                     style: TextStyle(
                     fontSize: 35,
                     fontWeight: FontWeight.bold,
                     fontFamily: DFFont,

                   ),
                   ),
                   FlatButton(
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                     onPressed: (){},
                     child: Row(
                       children: <Widget>[
                         Icon(


                           Icons.accessibility_new,
                           color: Colors.grey,
                           size: 20,

                         ),
                         Text(
                           'Report',
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               color: Colors.grey,
                               fontFamily: DFFont,
                               fontSize: 20
                           ),
                         ),


                       ],



                     ),



                   ),

                 ],


          ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(Icons.account_circle, size: 120, color: Colors.orangeAccent,),
            )
          ],
        ), Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            colorCard('Did not return the product', context, Colors.green)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            colorCard('reason 2', context, Colors.blue)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            colorCard('reason 3',  context, Colors.purpleAccent)
          ],
        ),
        SizedBox(
          height: 25,
        ),

        ],





      ), ),
    );
  }
}

Widget colorCard(
    String text, BuildContext context, Color color) {
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
              Text(
                text,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: DFFont
                ),
              ),

            ],
          ),
        ),
      ),
    ),
  );
}
