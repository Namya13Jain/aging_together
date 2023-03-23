import 'package:flutter/material.dart';

class info2 extends StatefulWidget {
  static const String id = 'MoreInfo';
  @override
  State<info2> createState() => _MoreInfo();
}

class _MoreInfo extends State<info2> {
  final formKey = GlobalKey<FormState>();
  String name = "Preferences";
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
            title: Text("Find Companion")),
        body: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tell Us About Yourself",
                      style: TextStyle(
                          color: Color.fromARGB(255, 35, 34, 34),
                          fontSize: 17,
                          fontWeight: FontWeight.w600)),
                  TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Describe Yourself",
                          contentPadding:
                              const EdgeInsets.only(bottom: 5.0, top: 12.5),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ))),
                  Text("Tell us about your Hobbies",
                      style: TextStyle(
                          color: Color.fromARGB(255, 35, 34, 34),
                          fontSize: 17,
                          fontWeight: FontWeight.w600)),
                  TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Write your hobbies",
                          contentPadding:
                              const EdgeInsets.only(bottom: 5.0, top: 12.5),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ))),
                  Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                          child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Color.fromRGBO(8, 143, 143, 1)),
                        onPressed: () {
                          Navigator.pushNamed(context, 'start');
                        },
                        child: Container(
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              'Finish',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ))),
                ],
              ),
            )));
  }
}
