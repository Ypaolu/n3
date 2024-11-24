import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class home extends StatelessWidget {
  final User user;
  home({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Mirror',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
        toolbarHeight: 60,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.purple,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (user.photoURL != null)
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(user.photoURL!),
              )
            else
              CircleAvatar(
                radius: 100,
                child: Icon(Icons.person, size: 50),
              ),
            SizedBox(height: 15),
            Container(
                alignment: Alignment.center,
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.purple[200],
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 2, color: Colors.purple),
                ),
                child: Text(
                    user.displayName ?? 'Usuário',
                    style: TextStyle(
                      fontSize: 25,
                    )
                )
            ),
            SizedBox(height: 15),
            Container(
                alignment: Alignment.center,
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.purple[200],
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 2, color: Colors.purple),
                ),
                child: Text(user.email ?? 'Email',
                    style: TextStyle(
                      fontSize: 18,
                    ))
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'LOGOUT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    await GoogleSignIn().signOut();
                    FirebaseAuth.instance.signOut();
                  },
                  icon: Icon(Icons.logout, color: Colors.white, size: 20),
                ),
              ])
            ],
          ),
          color: Colors.purple,
        ),
      ),
    );
  }
}
