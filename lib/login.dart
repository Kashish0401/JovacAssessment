import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final name = TextFormField(
    keyboardType: TextInputType.name,
    autofocus: false,
    //initialValue: '',
    decoration: InputDecoration(
      hintText: 'Student Name',
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
  );

  final email = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    //initialValue: 'some password',
    obscureText: true,
    decoration: InputDecoration(
      hintText: 'Email',
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
  );

  final loginButton = Padding(
    padding: EdgeInsets.symmetric(vertical: 16.0),
    child: ElevatedButton(
        onPressed: () {
          //Navigator.pushNamed('cert');
        },
        child: Text('login'),
        style: ElevatedButton.styleFrom(primary: Colors.blue[800])),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login to your account'),
        ),
        body: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              Text(
                'Login',
                style: TextStyle(fontSize: 30, color: Colors.blue[900]),
              ),
              SizedBox(
                height: 20,
              ),
              name,
              SizedBox(
                height: 20,
              ),
              email,
              SizedBox(
                height: 20,
              ),
              loginButton,
            ],
          ),
        ),
      ),
    );
  }
}
