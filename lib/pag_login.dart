import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class login extends StatelessWidget {
  login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'MIRROR',
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 50),
              GestureDetector(
                onTap: () async {
                  signInWithGoogle(context);
                },
                child: Container(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/imagens/logo.png'),
                ),
              ),
            ],
          ),
        )
    );
  }

  signInWithGoogle(BuildContext context) async {

    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken
    );

    UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
    print(userCredential.user?.displayName);



    FirebaseAuth.instance.signInWithCredential(credential);
  }
}