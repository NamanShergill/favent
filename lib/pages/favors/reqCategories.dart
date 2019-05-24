import 'package:flutter/material.dart';
import 'package:favent/src/utils/screen_size.dart';
import 'package:favent/Theme/colors.dart';

final DFFont= 'Josefin';

class reqCategories extends StatefulWidget {
  @override
  _reqCategoriesState createState() => _reqCategoriesState();
}

class _reqCategoriesState extends State<reqCategories> {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body:
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Material(
                  elevation: 6,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    constraints: BoxConstraints(minHeight: 110),
                    height: _media.height * 0.115,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          alignment: Alignment.center,
                          image: AssetImage('assets/images/bg.jpg'),
                          fit: BoxFit.none,
                        )
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(minHeight: 95),
                  height: _media.height * 0.099,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(15),
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: IconButton(
                                icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                                iconSize: 20,
                              ),
                            ),
                          ),
                          Text(
                            'Request Items',
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: DFFont,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: DFFont,
                        letterSpacing: 0.4
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      colorCard('Electronics', '', context, theme2.shade50)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      colorCard('Stationery', '', context, theme2.shade100)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      colorCard('Miscellaneous', '', context, theme2.shade200)
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.arrow_drop_down, color: tBlack,),
                      Text("Coming Soon", textAlign: TextAlign.center,style: TextStyle(color: tBlack, fontSize: 20, fontFamily: DFFont,),),
                      Icon(Icons.arrow_drop_down, color:tBlack,),
                    ],
                  ),
                  Divider(
                    height: 10,
                    color: tBlack,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      colorCarddisabled('Consumables', '', context, theme2.shade300)
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class inventory extends StatefulWidget {
  @override
  _inventoryState createState() => _inventoryState();
}

class _inventoryState extends State<inventory> {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body:
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Material(
                  elevation: 6,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    constraints: BoxConstraints(minHeight: 110),
                    height: _media.height * 0.115,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          alignment: Alignment.center,
                          image: AssetImage('assets/images/bg.jpg'),
                          fit: BoxFit.none,
                        )
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(minHeight: 95),
                  height: _media.height * 0.099,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(15),
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: IconButton(
                                icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                                iconSize: 20,
                              ),
                            ),
                          ),
                          Text(
                            'Inventory',
                            style: TextStyle(
                                fontSize: _media.longestSide * 0.03,
                                fontFamily: DFFont,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: DFFont,
                        letterSpacing: 0.4
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      colorCard('Electronics', '', context, theme2.shade50)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      colorCard('Stationery', '', context, theme2.shade100)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      colorCard('Miscellaneous', '', context, theme2.shade200)
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.arrow_drop_down, color: tBlack,),
                      Text("Coming Soon", textAlign: TextAlign.center,style: TextStyle(color: tBlack, fontSize: 20, fontFamily: DFFont,),),
                      Icon(Icons.arrow_drop_down, color:tBlack,),
                    ],
                  ),
                  Divider(
                    height: 10,
                    color: tBlack,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      colorCarddisabled('Consumables', '', context, theme2.shade300)
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


Widget colorCard(
    String text, String text2, BuildContext context, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
    constraints: BoxConstraints(minHeight: 90),
    margin: EdgeInsets.only(top: 15),
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
    height: screenAwareSize(60, context),
    width: _media.width - 60,
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
