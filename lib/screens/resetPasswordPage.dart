import 'package:flutter/material.dart';
import 'package:train_app/screens/loginPage.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {

 Widget _buildEmailField(){
    return Padding(
          padding: const EdgeInsets.only(
            top: 30,
            bottom: 40,
          ),
      child: TextFormField(
        style: const TextStyle(
          fontSize: 20.0,
          color: Colors.black,
        ),
        decoration:  InputDecoration(
          filled: true,
          fillColor: const Color(0xFFAEDBDA),
          hintText: 'example@gmail.com',
          hintStyle:  const TextStyle(
            color: Color(0xFF447574),
          ),
          contentPadding: const EdgeInsets.only(
              left: 35.0, bottom: 18.0, top: 15.0),
          focusedBorder: OutlineInputBorder(
            borderSide:  const BorderSide(color: Colors.white),
            borderRadius:  BorderRadius.circular(25.7),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide:  const BorderSide(color: Colors.white),
            borderRadius:  BorderRadius.circular(25.7),
          ),
        ),

        // onSaved: (text){
        //   _email = text!;
        // },

      ),
    );
  }

  Widget _buildElevatedButtonField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [

        ElevatedButton(

          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyLogin()),
            );
          },

          style: ElevatedButton.styleFrom(
            primary: const Color(0xFF006E6C),
            padding: const EdgeInsets.only(
              right: 50,
              left: 50,
              top: 6,
              bottom: 6,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),

          child: const Text(

            'Send',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.w400,
            ),
          ),

        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
            "Reset password",
            style: TextStyle(
              color: Color(0xFF006E6C),
            ),
        ),
        elevation: 0,
        iconTheme: const IconThemeData(
            color: Color(0xFF006E6C),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          children:  [
            const Text(
              'Enter the email associated with your account. \n\n\n Email address',
               style: TextStyle(
               fontSize: 21,
            ) ,
            ),
            _buildEmailField(),
            _buildElevatedButtonField(),
          ],
        ),
      ),
    );
  }
}
