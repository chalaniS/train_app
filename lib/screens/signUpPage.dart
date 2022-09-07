import 'package:flutter/material.dart';
import 'loginPage.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  late String text;
  final _formKey = GlobalKey<FormState>();

  Widget _buildPassWordField(String typedText){
    return  Padding(
      padding: const EdgeInsets.only(
        bottom: 10.0,
      ),
      child: TextFormField(
        style: const TextStyle(
          fontSize: 20.0,
          color: Colors.black,
        ),
        decoration:  InputDecoration(
          filled: true,
          fillColor: const Color(0xFFAEDBDA),
          hintText: typedText,
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
          this.text = text!;
        },

      ),
    );
  }

  Widget _buildElevatedButtonField(){
    return  Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState?.save();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyLogin()),
                );
              }
            },

            style: ElevatedButton.styleFrom(
              primary: const Color(0xFF006E6C),
              padding: const EdgeInsets.only(
                right: 50,
                left: 50,
                top: 6,
                bottom: 8,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),

            child: const Text(
              'Sign Up',
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
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Color(0xFF006E6C),
          ),
          title: const Text(
              'Register',
            style: TextStyle(
              color: Color(0xFF006E6C),
            ),
          ),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                children: [
                  _buildPassWordField('First Name'),
                   _buildPassWordField('Last Name'),
                  _buildPassWordField('E-mail'),
                  _buildPassWordField('NIC'),
                  _buildPassWordField('Nearest Station'),
                  _buildPassWordField('Password'),
                  _buildPassWordField('Re-enter Password'),
                  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Text(
                   'By clicking ‘sign up’ I agree that I have read and accepted the',
                    style: TextStyle(
                    color: Colors.black54
                    ),
                   ),
                  TextButton(
                     onPressed: (){},
                     child: const Text(
                        'Terms of Use',
                         )
                       ),
                   ],
                ),
                  _buildElevatedButtonField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
