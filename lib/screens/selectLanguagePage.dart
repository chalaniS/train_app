import 'package:flutter/material.dart';
import 'package:train_app/screens/loginPage.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({Key? key}) : super(key: key);

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {

  Widget _buildElevatedButtonField(String language){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 200,
        child: ElevatedButton(
          onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyLogin()),
              );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF006E6C),
            padding: const EdgeInsets.only(
              top: 5,
              bottom: 5,
              left: 30,
              right: 30,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),

          child: Text(
            language,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width / 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Image(image: AssetImage("images/splash.png"), width: 200,),
            const Padding(
              padding:  EdgeInsets.symmetric(
                vertical: 30
              ),
              child:  Text(
                  'Please select your language'),
            ),
            _buildElevatedButtonField('සිංහල'),
            _buildElevatedButtonField('தமிழ்'),
            _buildElevatedButtonField('English'),
          ],
        ),
      ),
    );
  }
}
