import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _email, _password;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30.0),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              initialValue: '',
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'New Email',

                /* border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0))*/
              ),
              onChanged: (value) {
                setState() {
                  _email = value;
                }
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              initialValue: '',
              autofocus: false,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'New password',

                /* border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0))*/
              ),
              onChanged: (value) {
                setState() {
                  _password = value;
                }
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.lightBlueAccent,
                child: MaterialButton(
                  minWidth: 200.0,
                  height: 40.0,
                  onPressed: () {
                    auth.createUserWithEmailAndPassword(
                        email: _email, password: _password);
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
