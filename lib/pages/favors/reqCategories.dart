import 'package:flutter/material.dart';

class reqCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Container(
          height: 2000,
          width: 200,
          color: Colors.white,
        ),
      ],
    );
  }
}
