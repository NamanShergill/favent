import 'package:flutter/material.dart';

class TitleBar extends StatefulWidget {
  TitleBar(this.title);
  String title;
  @override
  _TitleBarState createState() => _TitleBarState();
}

class _TitleBarState extends State<TitleBar> {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return  Stack(
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
                    widget.title,
                    style: TextStyle(
                        fontSize: _media.longestSide * 0.03>=25
                            ?_media.longestSide * 0.03
                            :25
                        ,
                        fontFamily: 'Josefin',
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
    );
  }
}
