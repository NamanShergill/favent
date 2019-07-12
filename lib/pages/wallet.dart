import 'package:flutter/material.dart';
import 'package:favent/src/utils/screen_size.dart';
import 'package:favent/widgets/dropdown_category.dart';
import 'package:favent/Theme/colors.dart';

final DFFont= 'Josefin';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.all(0),
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Container(
          constraints: BoxConstraints(minHeight: 350),
          color: Colors.grey.shade50,
          height: _media.height / 2 - 80,
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Stack(
                      children: <Widget>[
                        Material(
                          elevation: 4,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/bg2.jpg'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.3,
                          child: Container(
                            color: Colors.black87,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 130,
                  width: _media.width - 30,
                  child:
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    elevation: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 300,
                          padding: EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.monetization_on, color: Colors.grey, size: 20,),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Favor Points",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: DFFont,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('2000',
                                          style: Theme.of(context).textTheme.headline.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 0.4,
                                            fontFamily: DFFont,
                                            fontSize: 20,
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: _media.longestSide <= 775
                    ? screenAwareSize(20, context)
                    : screenAwareSize(35, context),
                left: 10,
                right: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Hero(
                            tag: 'title1',
                            child: Material(
                              color: Colors.transparent,
                              child: Text(
                                "Wallet",
                                style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: DFFont),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.grey.shade50,
          width: _media.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              category('Manage Balance', "Buy Favor points or sell them in exchange for PayTM cash."),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        colorCardsmall('Buy Favor Points', Icons.attach_money, context, '/iap', theme.shade50),
                        colorCardsmalldisabled('Sell Favor Points', Icons.money_off, context, '', theme.shade100)
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 25.0, right: 25, top: 30),
                child: Text(
                  'Overview',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: DFFont,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  colorCard('Transactions', '', context, theme.shade200),
                ],
              ),

            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}


Widget colorCard(
    String text, String text2, BuildContext context, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
    constraints: BoxConstraints(minHeight: 90),
    margin: EdgeInsets.only(top: 20),
    height: screenAwareSize(60, context),
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
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: DFFont
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 25,
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget colorCarddisabled(
    String text, String text2, BuildContext context, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
    constraints: BoxConstraints(minHeight: 90),
    margin: EdgeInsets.only(top: 15),
    height: 100,
    width: _media.width - 60,
    decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15),
        ),
    child: Material(
      borderRadius: BorderRadius.circular(15),
      color: Colors.grey,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              )
            ],
          ),
        ),
      ),
    ),
  );
}


Widget colorCardsmall(
    String text, IconData icon, BuildContext context, String route, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
    constraints: BoxConstraints(minWidth: 170),
    margin: EdgeInsets.all(10),
    height: 100,
    width: _media.width / 2 - 50,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: color.withOpacity(0.4),
              blurRadius: 3,
              spreadRadius: 0.2,
              offset: Offset(0, 2)),
        ]
    ),
    child: Material(
      borderRadius: BorderRadius.circular(15),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: (){
          Navigator.pushNamed(
            context,
            route,
          );
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
                  fontFamily: DFFont,
                ),
                overflow: TextOverflow.visible,
              ),
              Icon(
                icon,
                color: Colors.white,
                size: 20,
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget colorCardsmalldisabled(
    String text, IconData icon, BuildContext context, String route, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
    constraints: BoxConstraints(minWidth: 170),
    margin: EdgeInsets.all(10),
    height: 100,
    width: _media.width / 2 - 50,
    decoration: BoxDecoration(
      color: tBlack,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Material(
      borderRadius: BorderRadius.circular(15),
      color: tBlack,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
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
                  fontFamily: DFFont,
                ),
              ),
              Row(
                children: <Widget>[
                  Icon(
                    icon,
                    color: Colors.white,
                    size: 20,
                  ),
                  Text(
                    '(Coming Soon)',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: DFFont,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}