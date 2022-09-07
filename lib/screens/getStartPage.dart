import 'package:flutter/material.dart';
import 'SearchTrainPage.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  Widget _buildButtonField(context){
    return  Container(
      padding: const EdgeInsets.only(
        top:50,
        bottom: 70,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF006E6C),
          padding: const EdgeInsets.only(
            right: 100,
            left: 100,
            top: 8,
            bottom: 8,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SearchTrain() ),
          );
        },
        child: const Text(
          'Get Started',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _buildMessage(){
   return const Padding(
      padding: EdgeInsets.only(
        top: 40,
        left: 20,
        right: 20,
      ),
      child: Text(
        'Welcome to Online Train Tracking System of Sri Lanka Railway Department.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 22,
          color: Color(0xFF354e4b),

        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(
        top: 30,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/getStart.jpg"),
          fit:BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(
            color: Color(0xFF006E6C),
          ),
        ),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: const BoxDecoration(
              color: Color(0xFFBFDAD8),
              borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                ),
              ),
              child: Column(
                children:  [
                  _buildMessage(),
                 _buildButtonField(context),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
