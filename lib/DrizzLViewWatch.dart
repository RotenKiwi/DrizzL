import 'package:flutter/material.dart';

class DrizzLViewWatch extends StatefulWidget {
  const DrizzLViewWatch({Key? key}) : super(key: key);

  @override
  State<DrizzLViewWatch> createState() => _DrizzLViewWatchState();
}

class _DrizzLViewWatchState extends State<DrizzLViewWatch> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom:  size.height*0.28,
            left: 0,
            child: Image.asset(
              'assets/images/buildings.png',
              width: size.width * 0.8,
            ),
          ),
          Positioned(
            bottom: 0,
            //top: size.height,
            child: Container(
              color: Colors.black,
              width: size.width,
              height: size.height * 0.35,
            ),
          ),
        ],
      ),
    );
  }
}
