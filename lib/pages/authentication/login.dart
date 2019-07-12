import 'package:flutter/material.dart';
import 'package:favent/Theme/colors.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {


  double sHeight= 0;
  String button= 'Sign Up';
  double lHeight;

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    lHeight= _media.height * 0.8;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
        body:
        Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: AnimatedContainer(
                  constraints: BoxConstraints(maxHeight: _media.height-100),
                  width: _media.width,
                  height: lHeight,
                  duration: Duration(milliseconds: 500),
                  child: loginbox(),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    sHeight = sHeight == 0
                        ? sHeight= _media.height * 0.8
                        : sHeight = 0
                    ;
                    button = button == 'Sign Up'
                        ? button = 'Login'
                        : button = 'Sign Up'
                    ;
                    lHeight = lHeight == 0
                        ? lHeight= _media.height * 0.8
                        : lHeight = 0
                    ;}
                  );
                },
                child: AnimatedContainer(
                  constraints: BoxConstraints(minHeight: 100),
                  width: _media.width,
                  height: _media.height * 0.2,
                  duration: Duration(milliseconds: 500),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/bg.jpg'),
                          fit: BoxFit.cover
                      )
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
                constraints: BoxConstraints(maxHeight: _media.height-100),
                width: _media.width,
                height: sHeight,
                duration: Duration(milliseconds: 500),
                child: SignupBox(),
              )
            ],
          ),
        )
    );
  }
}


class loginbox extends StatefulWidget {
  @override
  _loginboxState createState() => _loginboxState();
}

class _loginboxState extends State<loginbox> {
  @override
  Widget build(BuildContext context) {
    final _media= MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
       Expanded(
         child: Container(
           width: _media.width * 0.8,
           child: ListView(
             physics: BouncingScrollPhysics(),
             children: <Widget>[
               Column(
                 children: <Widget>[
                   SizedBox(
                     height: _media.height*0.1,
                   ),
                   Text(
                     'LOG IN',
                     style: TextStyle(
                       fontSize: 25,
                       fontFamily: 'Josefin',
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   TextField(
                     keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: 'Phone Number',
                       prefixIcon: Icon(Icons.phone),
                     ),
                   ),
                   SizedBox(height: 20,),
                   TextField(
                     obscureText: true,
                     decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: 'Password',
                       prefixIcon: Icon(Icons.lock),
                     ),
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   FloatingActionButton(
                     heroTag: null,
                     onPressed: (){
                     },
                     backgroundColor: Colors.indigo,
                     child: Icon(Icons.arrow_forward),
                   ),
                   SizedBox(
                     height: 50,
                   ),
                   Row(
                     children: <Widget>[
                       Expanded(child: Divider(color: Colors.grey,)),
                       SizedBox(width: 15,),
                       Text(
                         'OR',
                         style: TextStyle(
                           color: Colors.grey
                         ),
                       ),

                       SizedBox(width: 15,),
                       Expanded(child: Divider(color: Colors.grey,)
                       ),
                     ],
                   ),
                   SizedBox(
                     height: 30,
                   ),
                   Container(
                     constraints: BoxConstraints(minWidth: 275),
                     width: _media.width* 0.6,
                     child: GoogleSignInButton(
                       onPressed: () {/* ... */},
                       darkMode: true, // default: false
                     ),
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Container(
                     constraints: BoxConstraints(minWidth: 275),
                     width: _media.width* 0.6,
                     child: FacebookSignInButton(
                       onPressed: (){
                       },
                     ),
                   ),
                 ],
               ),
             ],
           ),
         ),
       ),
      ],
    );
  }
}

class SignupBox extends StatefulWidget {
  @override
  _SignupBoxState createState() => _SignupBoxState();
}

class _SignupBoxState extends State<SignupBox> {
  @override
  Widget build(BuildContext context) {
    final _media= MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Container(
            width: _media.width * 0.8,
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: _media.height*0.1,
                    ),
                    Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Josefin',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone Number',
                        prefixIcon: Icon(Icons.phone),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FloatingActionButton(
                      heroTag: null,
                      onPressed: (){
                      },
                      backgroundColor: Colors.indigo,
                      child: Icon(Icons.arrow_forward),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: Divider(color: Colors.grey,)),
                        SizedBox(width: 15,),
                        Text(
                          'OR',
                          style: TextStyle(
                              color: Colors.grey
                          ),
                        ),

                        SizedBox(width: 15,),
                        Expanded(child: Divider(color: Colors.grey,)
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      constraints: BoxConstraints(minWidth: 275),
                      width: _media.width* 0.6,
                      child: GoogleSignInButton(
                        onPressed: () {/* ... */},
                        darkMode: true, // default: false
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      constraints: BoxConstraints(minWidth: 275),
                      width: _media.width* 0.6,
                      child: FacebookSignInButton(
                        onPressed: (){
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
