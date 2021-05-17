import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email;
  String password;
  int c = 0;

  Function validate(String email, String password){


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10.0),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/x.png'),
                radius: 80.0,

              ),
            ),
            SizedBox(height: 30.0),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              initialValue: '',
              autofocus: false,
              decoration: InputDecoration(
                  hintText: 'Email',
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)
                  )

              ),
              onSaved: (input) => email = input,
            ),

            SizedBox(height: 20.0,),

            TextFormField(
              keyboardType: TextInputType.text,
              initialValue: '',
              autofocus: false,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'password',
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)
                  )

              ),
              onSaved: (input) => password = input,
            ),

            SizedBox(height: 10.0,),

            Padding(
              padding: EdgeInsets.all(20.0),
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.lightBlueAccent,
                child: MaterialButton(
                  minWidth: 200.0,
                  height: 40.0,
                  onPressed: () => validate(email , password),
                  child: Text('Sign in' ,style: TextStyle(
                      color: Colors.white
                  ),),
                ),

              ),
            ),
            FlatButton(
                onPressed:(){},
                child: Text('Forgot Password',
                  style: TextStyle(
                      color: Colors.blue
                  ),)
            )


          ],
        ),
      ) ,
    );
  }
}
