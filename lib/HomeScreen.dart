import 'package:flutter/material.dart';
import 'DrizzLViewPhone.dart';
import 'DrizzLViewWatch.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        debugPrint('Host Device screen width is ${constraints.maxWidth}');

        //Watch-Size
        if(constraints.maxWidth < 400)
          return DrizzLViewWatch();

        //Phone-Size
        else
          return DrizzLViewPhone();
      },
    );
  }
}
