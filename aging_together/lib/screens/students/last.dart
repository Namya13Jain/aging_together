import 'package:aging_together/screens/students/disclaimer.dart';

import 'intro.dart';
import 'package:flutter/material.dart';

class last extends StatefulWidget {
  static const String id = 'Last';
  @override
  State<last> createState() => _last();
}

class _last extends State<last> {
  final formKey = GlobalKey<FormState>();
  String name = "Last";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          elevation: 5,
          backgroundColor: const Color.fromRGBO(8, 143, 143, 1),
          title: Text("Become a Mentor"),
          leading: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => disclaimer()));
              },
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 20,
              )),
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 30.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: 10.0),
                          Text(
                              "Thankyou for choosing to volunteer with Aging Together and we can't wait to get started!",
                              style: TextStyle(
                                  color: Color(0xff232222),
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 20.0),
                          Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Center(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          primary:
                                              Color.fromRGBO(8, 143, 143, 1)),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => intro()));
                                      },
                                      child: Container(
                                          width: double.infinity,
                                          child: Center(
                                              child: Text('Back to Home',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  )))))))
                        ])))));
  }
}
