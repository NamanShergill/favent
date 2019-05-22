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
      ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 70,
        ),
        children: <Widget>[
          Container(
            height: _media.height,
            width: _media.width,
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Request Items',
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
                  'Categories',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      inherit: true,
                      fontFamily: DFFont,
                      letterSpacing: 0.4
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    colorCard('Electronics', '', context, Colors.green)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    colorCard('Stationery', '', context, Colors.blue)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    colorCard('Miscellaneous', '', context, Colors.redAccent)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.arrow_drop_down, color: Colors.grey,),
                    Text("Coming Soon", textAlign: TextAlign.center,style: TextStyle(color: Colors.grey, fontSize: 20, fontFamily: DFFont,),),
                    Icon(Icons.arrow_drop_down, color: Colors.grey,),
                  ],
                ),
                Divider(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    colorCarddisabled('Consumables', '', context, Colors.purpleAccent)
                  ],
                ),
              ],
            ),
          ),
        ],
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
      ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 70,
        ),
        children: <Widget>[
          Container(
            height: _media.height,
            width: _media.width,
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Inventory',
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
                  'Categories',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      inherit: true,
                      fontFamily: DFFont,
                      letterSpacing: 0.4
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    colorCard('Electronics', '', context, Colors.green)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    colorCard('Stationery', '', context, Colors.blue)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    colorCard('Miscellaneous', '', context, Colors.redAccent)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.arrow_drop_down, color: Colors.grey,),
                    Text("Coming Soon", textAlign: TextAlign.center,style: TextStyle(color: Colors.grey, fontSize: 20, fontFamily: DFFont,),),
                    Icon(Icons.arrow_drop_down, color: Colors.grey,),
                  ],
                ),
                Divider(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    colorCarddisabled('Consumables', '', context, Colors.purpleAccent)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


Widget colorCard(
    String text, String text2, BuildContext context, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
    constraints: BoxConstraints(minHeight: 90),
    margin: EdgeInsets.only(top: 15, right: 15),
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
    margin: EdgeInsets.only(top: 15, right: 15),
    height: screenAwareSize(70, context),
    width: _media.width - 60,
    decoration: BoxDecoration(
        color: color,
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
