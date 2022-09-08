import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maldibro/core/constants/assets.dart';
import 'package:maldibro/ui/home/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 3500), () {
      Navigator.push(context, CupertinoPageRoute(builder: (context) => Home()));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
        Spin(
        delay: Duration(milliseconds: 800),
          child: Image.asset(Assets.logo, height: 120)),
              SizedBox(height: 15),
              FadeIn(
                  delay: Duration(milliseconds: 2000),
                  child: Text("Maldibro", style: GoogleFonts.poppins(
                fontSize: 20
              )))
            ]))
    );
  }
}
