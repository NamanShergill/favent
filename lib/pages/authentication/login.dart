import 'package:flutter/material.dart';

double screenSize(BuildContext context) {
 return MediaQuery.of(context).size.height;
}


class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {

  double sHeight= 0;
  String button= 'Sign Up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
          width: 900,
          child: Column(
            children: <Widget>[
              Expanded(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 350),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Login Placeholder',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey
                        ),)
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    sHeight = sHeight == 0
                        ? sHeight= screenSize(context) - 300
                        : sHeight = 0
                    ;
                    button = button == 'Sign Up'
                        ? button = 'Login'
                        : button = 'Sign Up'
                    ;

                  });
                },
                child: AnimatedContainer(
                  width: 900,
                  height: 300,
                  duration: Duration(milliseconds: 350),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        const Color(0xFF81269D),
                        const Color(0xFFEE112D)
                      ],
                          begin: Alignment.centerLeft,
                          end:  Alignment.centerRight)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        button,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Josefin',
                          letterSpacing: 0.4
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedContainer(
                height: sHeight,
                duration: Duration(milliseconds: 350),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Signup Placeholder',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey
                      ),)
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
