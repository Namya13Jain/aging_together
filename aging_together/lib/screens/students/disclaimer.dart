import 'package:aging_together/screens/students/mode.dart';

import 'last.dart';
import 'package:flutter/material.dart';

class disclaimer extends StatefulWidget {
  static const String id = 'Disclaimer';
  @override
  State<disclaimer> createState() => _disclaimer();
}

class _disclaimer extends State<disclaimer> {
  final formKey = GlobalKey<FormState>();
  String name = "Disclaimer";
  @override
  bool? disclaim = false;
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => mode()));
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
                          Text(
                              "We are thrilled to have you join our team of volunteers and contribuate to our mission in Aging Together",
                              style: TextStyle(
                                  color: Color(0xff232222),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 15.0),
                          CheckboxListTile(
                            value: disclaim,
                            onChanged: (value) {
                              setState(() {
                                disclaim = value;
                              });
                            },
                            activeColor: Colors.blue,
                            title: Text(
                                "I understand that once the course starts, I will not be able to back out mid-course as it would impact all my old-buddies associated with the course.",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 35, 34, 34),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)),
                          ),
                          SizedBox(height: 20.0),
                          Text(
                              "If you have any questions or concerns before your start date, please don't hesitate to reach out to us. ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 35, 34, 34),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)),
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
                                                builder: (context) => last()));
                                      },
                                      child: Container(
                                          width: double.infinity,
                                          child: Center(
                                              child: Text('Next',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  )))))))
                        ])))));
  }
}
