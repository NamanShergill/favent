import 'package:flutter/material.dart';
import 'package:favent/src/utils/screen_size.dart';
import 'package:favent/Theme/colors.dart';


final DFFont= 'Josefin';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.all(0),
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Container(
          constraints: BoxConstraints(minHeight: 300),
          color: Colors.grey.shade50,
          height: _media.height / 2 - 120,
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
                  height: 160,
                  width: _media.width - 30,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(Icons.account_circle, size: 140, color: Colors.black87,),
                      )
                    ],
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Profile',
                                style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Josefin"),
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
                                      size: 25,
                                    ),
                                    Text(
                                      'Edit',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontFamily: DFFont,
                                          fontSize: 25
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
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
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
                  colorCard('Username', 'Naman Shergill', context, theme.shade200)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  colorCard('E-mail address', 'namanpreet@gmail.com', context, theme.shade200)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  colorCard('Phone Number', '7733088115', context, theme.shade200)
                ],
              ),
              SizedBox(
                height: 45,
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
                  colorCard('Balance', 2000.toString(), context, theme.shade200)
                ],
              ),
              SizedBox(
                height: 45,
              ),
            ],
          ),
        )
      ],
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