import 'package:flutter/material.dart';
import 'login.dart';
import 'cert.dart';
import 'get_started.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: getStarted(),
        routes: {
          'gs': (context) => getStarted(),
          'login': (context) => LoginPage(),
          'cert': (context) => CertificatePage()
        });
  }
}
