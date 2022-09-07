import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'selectLanguagePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 5)).then((value){
      Navigator.of(context).pushReplacement(
          CupertinoPageRoute(builder: (ctx) => const SelectLanguage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(image: AssetImage("images/splash.png"), width: 200,),
            SizedBox(
              height: 50,
            ),
          SpinKitThreeInOut(
            color: Color(0xFF006E6C),
            size: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
