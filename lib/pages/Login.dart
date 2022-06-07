// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qamar_zaman_kaira/pages/forgotpassword.dart';
import 'package:qamar_zaman_kaira/pages/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  get style => null;
  late String email,password;
  Widget _buildlogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // 
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 50,),
          child: Image.asset('assets/images/k.png',height: 100, width: 100,),
        ),
        
      ],
    );
  }

  Widget _BuildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text(
                      'Login Here',
                      style: GoogleFonts.poppins(
                        textStyle: style,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                        color: Color.fromARGB(255, 28, 28, 28),
                      ),
                    ),
                  ],
                ),
                 _buildEmailRow(),
                _buildPasswordRow(),
                _ForgotPasswordButton(),
                SizedBox(height: 5,),                
                _buildLoginButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
  Widget _buildEmailRow(){
    return Padding(padding: EdgeInsets.all(8),
    child: TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      onChanged: (value ){
        setState(() {
           email = value;
        });
      },
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.email,
          color: Color(0xFFe9533c),
        ),
        labelText:'E-mail', 
      ),
    ),
    );
  }
  Widget _buildPasswordRow(){
    return Padding(padding: EdgeInsets.all(8),
    child: TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      onChanged: (value ){
        setState(() {
           password = value;
        });
      },
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.password,
          color: Color(0xFFe9533c),
        ),
        labelText:'Password', 
      ),
    ),
    );
  }
  Widget _ForgotPasswordButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        FlatButton(
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Forgot(),));
          },
          child:  Text(
                      'Forgot Password?',
                      style: GoogleFonts.poppins(
                        textStyle: style,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                        color: Color.fromARGB(255, 115, 114, 114),
                      ),
        )),
      ],
    );
  }
  Widget _buildLoginButton(){
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget> [
      Container(
        height: 1.4 * (MediaQuery.of(context).size.height / 20),
        width: 5 * (MediaQuery.of(context).size.width / 10),
        margin: EdgeInsets.only(bottom: 20),
        child: RaisedButton(
          elevation: 5,
          color: Color(0xFFe9533c),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: (){
          },
          child:  Text(
                      'Login',
                      style: GoogleFonts.poppins(
                        textStyle: style,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      )
        ),
      ),
    ],
    );
  }
  Widget _SignUpButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Padding(
          padding:EdgeInsets.only(top: 40),
          child: FlatButton(onPressed: () {
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUp(),));
          },
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Dont have an account?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 115, 114, 114),
                    fontSize: MediaQuery.of(context).size.height/40,
                    fontWeight: FontWeight.w400, 
                  ),
                ),
                TextSpan(
                  text: 'Sign Up',
                  style: TextStyle(
                    color: Color(0xFFe9533c),
                    fontSize: MediaQuery.of(context).size.height/40,
                    fontWeight: FontWeight.w700, 
                  ),
                ),
              ],
            ),
          ),
          ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset:false,
        backgroundColor: Color(0xFFf2f3f5),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFe9533c),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(70),
                    bottomRight: Radius.circular(70),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildlogo(),
                _BuildContainer(),
                _SignUpButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
