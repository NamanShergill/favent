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
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Theme(
      data: theme,
      child: Material(
        child: InkWell(
          onTap: (){
          },
          child: ExpansionTile(
            title: Text(
               widget.title,
               style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
                 fontFamily: 'Josefin',
              ),
            ),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
            ],
          ),
        ),
      )
    );
  }
}