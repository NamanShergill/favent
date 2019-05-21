import 'package:flutter/material.dart';
import 'package:favent/src/utils/screen_size.dart';


final DFFont= 'Josefin';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 70,
      ),
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Profile',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: DFFont,
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                onPressed: (){
                  },
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.mode_edit,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontFamily: DFFont,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Overview',
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
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            colorCard('Username', 'Naman Shergill', context, Colors.green)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            colorCard('E-mail address', 'namanpreet@gmail.com', context, Colors.blue)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            colorCard('Phone Number', '7733088115', context, Colors.purpleAccent)
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          'Wallet',
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
            colorCard('Balance', 2000.toString(), context, Color(0xFFff3f5e))
          ],
        ),
      ],
    );
  }
}


Widget colorCard(
    String text, String text2, BuildContext context, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
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
              Text(
                text2,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
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
