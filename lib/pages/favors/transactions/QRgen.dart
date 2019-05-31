import 'package:favent/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:favent/widgets/titlebar.dart';

class QRScan extends StatefulWidget {
  @override
  _QRScanState createState() => _QRScanState();
}

class _QRScanState extends State<QRScan> {
  @override
  Widget build(BuildContext context) {
    final _media= MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                TitleBar('Contact Information'),
                SizedBox(height: 10,),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'The following person has agreed to lend the item you are looking for:',
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          fontSize: 20
                      ),
                      textAlign: TextAlign.center,
                    )
                ),
                InfoCard('Name', 'Risabh Sinha', context),
                SizedBox(height: 10,),
                InfoCard('Contact Number', '?????????', context),
                NavCard('Location (Tap to open in Maps)', '', context),
                SizedBox(height: 100,),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: _media.width,
                    color:Colors.grey.shade50.withOpacity(0.4),
                    child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Please allow the lender to scan the QR, to complete the  transaction',
                          style: TextStyle(
                              fontFamily: 'Josefin',
                              fontSize: 20
                          ),
                          textAlign: TextAlign.center,
                        )
                    ),
                  ),
                  colorCard('Show QR', '', context, theme2.shade100),
                ],
              ),
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
    height: 90,
    width: _media.width,
    decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
              color: color.withOpacity(0.4),
              blurRadius: 16,
              spreadRadius: 0.2,
              offset: Offset(0, 8)),
        ]),
    child: Material(
      color: color,
      child: InkWell(
        onTap: (){
        },
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Josefin'
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget InfoCard(
    String text, String text2, BuildContext context) {
  final _media = MediaQuery.of(context).size;
  return Container(
    constraints: BoxConstraints(minHeight: 90),
    margin: EdgeInsets.only(top: 5),
    height: 90,
    width: _media.width - 40,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/bg.jpg'),
        fit: BoxFit.fitWidth,
      ),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Material(
      borderRadius: BorderRadius.circular(15),
      color: Colors.transparent,
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
                    fontFamily: 'Josefin'
                ),
              ),
              Text(
                text2,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Josefin'
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget NavCard(
    String text, String text2, BuildContext context) {
  final _media = MediaQuery.of(context).size;
  return Container(
    constraints: BoxConstraints(minHeight: 90),
    margin: EdgeInsets.only(top: 15),
    height: 90,
    width: _media.width - 40,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/bg.jpg'),
        fit: BoxFit.fitWidth,
      ),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Material(
      borderRadius: BorderRadius.circular(15),
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: (){

        },
        child:  Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                    fontSize: _media.width*0.05 <= 30
                        ?_media.width*0.05
                        :30
                    ,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Josefin'
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: _media.width*0.05 <= 30
                    ?_media.width*0.05
                    :30,
              )
            ],
          ),
        ),
      ),
    ),
  );
}