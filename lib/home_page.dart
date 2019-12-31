import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_ui/custom_color.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: null),
        title: Text(
          'ORANGES',
          style: GoogleFonts.rubik(fontWeight: FontWeight.w500, fontSize: 18),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: <Widget>[
          Image.asset(
            'assets/images/image_main.png',
            height: 366,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              moreImageContainer('assets/images/more_1.png'),
              SizedBox(
                width: 15,
              ),
              moreImageContainer('assets/images/more_2.png'),
              SizedBox(
                width: 15,
              ),
              moreImageContainer('assets/images/more_3.png')
            ],
          ),
          SizedBox(height: 25),
          Center(
            child: Text(
              'Valencia Oranges',
              style:
                  GoogleFonts.rubik(fontWeight: FontWeight.w600, fontSize: 24),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Center(
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                textAlign: TextAlign.center,
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(color: Colors.grey), fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: 25),
          counterRow(),
          SizedBox(height: 30),
          Center(
              child: Text('Quantity 1 KG',
                  style: GoogleFonts.rubik(
                      textStyle: TextStyle(color: Colors.black),
                      fontSize: 14))),
          SizedBox(height: 20),
          customButton('BUY NOW')
        ],
      ),
    );
  }

  Container customButton(String message) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25),
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: accentColor,
      ),
      child: Center(
        child: Text(
          message,
          style: GoogleFonts.rubik(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              textStyle: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }

  Container moreImageContainer(String assetPath) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          color: accentColor.withOpacity(.5),
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: ExactAssetImage('$assetPath'), fit: BoxFit.cover)),
    );
  }

  Row counterRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
            icon: Icon(Icons.remove, color: Colors.black), onPressed: null),
        SizedBox(width: 15),
        RichText(
          text: TextSpan(
              text: 'GH₵ ',
              children: [
                TextSpan(
                    text: '234',
                    style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w600, fontSize: 38,textStyle: TextStyle(color:Colors.black)))
              ],
              style:
                  GoogleFonts.rubik(fontWeight: FontWeight.w600, fontSize: 18,textStyle: TextStyle(color:Colors.black))),
        ),
        SizedBox(width: 15),
        IconButton(icon: Icon(Icons.add, color: Colors.black), onPressed: null),
      ],
    );
  }
}
