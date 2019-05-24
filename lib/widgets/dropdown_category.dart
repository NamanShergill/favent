import 'package:flutter/material.dart';

class category extends StatefulWidget {
  category(this.title, this.desc);
  String title;
  String desc;
  @override
  _categoryState createState() => _categoryState();
}

class _categoryState extends State<category> {

  double height= 0;
  var icon = Icons.arrow_drop_down;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.only(
              left: 20.0, right: 20,top: 5),
          child: Column(
            children: <Widget>[
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: (){
                    setState(() {
                      height = height == 0
                          ? height = 60
                          : height = 0
                      ;
                      icon = icon == Icons.arrow_drop_down
                          ? icon =  Icons.arrow_drop_up
                          : icon = Icons.arrow_drop_down
                      ;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Josefin',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        AnimatedContainer(
                          height: 40,
                          duration: Duration(milliseconds: 200),
                          child: Icon(
                            icon,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: AnimatedContainer(
                  height: height,
                  duration: Duration(milliseconds: 200),
                  child: Text(
                    widget.desc,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontFamily: 'Josefin',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}