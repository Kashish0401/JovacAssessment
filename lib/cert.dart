import 'package:flutter/material.dart';

class CertificatePage extends StatelessWidget {
  String? Name;
  DateTime todayDate = DateTime.now();
  CertificatePage({Key? key, this.Name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              "Status Bar",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              height: 20,
            ),
            SizedBox(
              height: 15,
            ),
            Text("Hi, ${Name}",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Image(
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/e5/73/7c/e5737c44dd061635766ba1e3a4b4efb9.png")),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "You have successfully completed Hybrid Mobile App Development Course.",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "INSTRUCTOR NAME",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 5,
            ),
            Text("Pankaj Kapoor",
                style: TextStyle(color: Colors.black54, fontSize: 20)),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                    "Date:${todayDate.day}-${todayDate.month}-${todayDate.year}",
                    style: TextStyle(fontSize: 20))
              ],
            )
          ],
        ),
      )),
    );
  }
}
