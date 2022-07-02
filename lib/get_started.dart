import 'package:flutter/material.dart';
import 'login.dart';
import 'cert.dart';

class getStarted extends StatelessWidget {
  const getStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Training',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.purple,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image(
              image: NetworkImage(
                  'https://i.pinimg.com/originals/81/ee/a4/81eea4ce8363e786aea9f0020c39b29c.jpg'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                child: Text('Get Started'),
                style: ElevatedButton.styleFrom(primary: Colors.purple[800])),
          ],
        ),
      ),
    );
  }
}
