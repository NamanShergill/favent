import 'package:favent/pages/dashboard.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {





  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    final DFFont = 'Josefin';

    return Scaffold(

        body:
        Container(

          width: _media.width,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  constraints: BoxConstraints(maxHeight: _media.height-100),
                  width: _media.width,
                  height: _media.height * 0.5,
                  color: Colors.amber,





                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: <Widget>[

                      colorCard('login with facebook', context, '/login1', Colors.green ),
                      colorCard('login with google', context, '/login1', Colors.green)
                    ],
                  )
                ),
              ),

              Container(
                constraints: BoxConstraints(maxHeight: _media.height-100),
                width: _media.width,
                height: _media.height*0.5,
                color: Colors.amber,



                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                  children: <Widget>[

                  colorCard('Signup with facebook', context, '/signup', Colors.green ),
                  colorCard('Signup with google', context, '/signup', Colors.green)
                ],

                )
              )
            ],
          ),
        )
    );
  }
}



Widget colorCard(
    String text, BuildContext context,  String route, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
    constraints: BoxConstraints(minWidth: 100),
    margin: EdgeInsets.only(left: 10, right: 10),
    height: 150,
    width: _media.width / 3 ,
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
      borderRadius: BorderRadius.circular(35),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(35),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                text,textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontFamily: DFFont,
                ),
              ),

            ],
          ),
        ),
      ),
    ),
  );
}
