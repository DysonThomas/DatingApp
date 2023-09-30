import 'package:dating_app/Components/TextField.dart';
import 'package:dating_app/Components/button.dart';
import 'package:dating_app/Components/logintile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  Logo
              Icon(
                Icons.lock,
                color: Colors.white,
                size: 70,
              ),
              SizedBox(height: 20),
              //  Welcome Back Text

              Text("Hello Again!",
                  style:
                      GoogleFonts.bebasNeue(fontSize: 36, color: Colors.white)),
              SizedBox(
                height: 5,
              ),
              Text("Welcome Back, you've been missed!",
                  style:
                      GoogleFonts.bebasNeue(fontSize: 20, color: Colors.white)),
              SizedBox(
                height: 15,
              ),

              //  User Name Text Box
              MyTExtFields(userNameController, 'Enter Your Email', false),
              //  Password Text Box
              MyTExtFields(passwordController, 'Enter Your Password', true),
              //  Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Passowrd?',
                        style: GoogleFonts.heebo(
                            fontSize: 12, color: Colors.white70))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MyButton(
                onTap: signUserIn(),
              ),
              //  Signup Method - Google
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: .5,
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      ' Or Continue With ',
                      style: GoogleFonts.heebo(
                          fontSize: 15, color: Colors.white70),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: .5,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myTiles(imgLoc: 'Asset/Images/google.png'),
                  SizedBox(width: 5),
                  myTiles(imgLoc: 'Asset/Images/apple.png')
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a Member ?',
                    style: GoogleFonts.heebo(color: Colors.black),
                  ),
                  Text(
                    ' Register Now',
                    style: GoogleFonts.heebo(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
