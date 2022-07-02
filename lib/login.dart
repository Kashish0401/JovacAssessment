import 'package:flutter/material.dart';
import 'package:test_2_7/cert.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  var nameError = null;
  var emailError = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Login")),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  errorText: nameError,
                  labelText: "Student Name",
                  icon: Icon(Icons.person),
                  hintText: "Enter your name"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  errorText: emailError,
                  hintText: "Enter your email",
                  labelText: "Email ID",
                  icon: Icon(Icons.alternate_email_sharp)),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
                child: SizedBox(
                    width: 240,
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          setState(() {
                            if (nameController.text.isEmpty) {
                              nameError =
                                  "Field should not be blank in Name field";
                            } else if (emailController.text.isEmpty) {
                              emailError =
                                  "Field should not be blank in Email field";
                            } else {
                              nameError = null;
                              emailError = null;
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return CertificatePage(
                                    Name: nameController.text.toString());
                              }));
                            }
                          });
                        },
                        child: Text("Login"))))
          ],
        ),
      ),
    );
  }
}
