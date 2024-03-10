import 'package:allen/home_page.dart';
import 'package:allen/logged_in.dart';
import 'package:allen/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user is logged in 

          if(snapshot.hasData){
            return  LoggedIn();
          }
          else {
            return LoginPage();
          }

          //user is not logged in 

        },
      ),
    );
  }
}