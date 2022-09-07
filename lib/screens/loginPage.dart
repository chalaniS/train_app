import 'package:flutter/material.dart';
import 'signUpPage.dart';
import 'getStartPage.dart';
import 'resetPasswordPage.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

  late String _password;
  late String _username;
  final _formKey = GlobalKey<FormState>();

  Widget _buildUserNameField(){
    return  TextFormField(
        style: const TextStyle(
            fontSize: 20.0,
            color: Colors.black,

            ),
          decoration:  InputDecoration(
            filled: true,
            fillColor: const Color(0xFFAEDBDA),
            hintText: 'Username',
            hintStyle:  const TextStyle(
              color: Color(0xFF447574),
            ),
            contentPadding: const EdgeInsets.only(
                left: 35.0, bottom: 20.0, top: 15.0),
            focusedBorder: OutlineInputBorder(
              borderSide:  const BorderSide(color: Colors.white),
              borderRadius:  BorderRadius.circular(25.7),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide:  const BorderSide(color: Colors.white),
              borderRadius:  BorderRadius.circular(25.7),
            ),
          ),

        onSaved: (text){
          _username = text!;
        },

    );
  }

  Widget _buildPassWordField(){
    return TextFormField(
        style: const TextStyle(
          fontSize: 20.0,
          color: Colors.black,
        ),
        decoration:  InputDecoration(
          filled: true,
          fillColor: const Color(0xFFAEDBDA),
          hintText: 'Password',
          hintStyle:  const TextStyle(
            color: Color(0xFF447574),
          ),
          contentPadding: const EdgeInsets.only(
              left: 35.0, bottom: 20.0, top: 15.0),
          focusedBorder: OutlineInputBorder(
            borderSide:  const BorderSide(color: Colors.white),
            borderRadius:  BorderRadius.circular(25.7),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide:  const BorderSide(color: Colors.white),
            borderRadius:  BorderRadius.circular(25.7),
          ),
        ),
        obscureText: true,
        maxLength: 8,
        onSaved: (text){
          _password = text!;
        },
    );
  }

  Widget _buildTextButtonField(){
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ResetPassword()),
        );
      },
      style: TextButton.styleFrom(
          backgroundColor: Colors.black,
        // Background Color
      ),
      child: const Text(
        'Forgot Password?',
        style: TextStyle(
          fontSize: 17,
        ),
      ),
    );
  }

  Widget _buildElevatedButtonField(){
    return SizedBox(
        width: MediaQuery.of(context).size.width / 1,
        child: ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState?.save();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GetStarted()),
              );
            }
          },

          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF006E6C),
            padding: const EdgeInsets.only(
              top: 6,
              bottom: 8,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),

          child: const Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.w400,
            ),
          ),

        ),
    );
  }

  Widget _buildSignUpField(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?"),
        TextButton(
          onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignUp()),
            );
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(
              fontSize: 15,
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
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Color(0xFF006E6C),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            children:  [
              const Image(
                  image: AssetImage("images/logo.png"),
                  width: 350.0,
                  alignment:  Alignment.center,
                ),
              _buildUserNameField(),
              _buildPassWordField(),
              _buildTextButtonField(),
              _buildElevatedButtonField(),
              _buildSignUpField(),
            ],
          ),
        ),
      )
    );
  }
}
