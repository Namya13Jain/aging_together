import 'package:flutter/material.dart';
import 'info2.dart';

class info1 extends StatefulWidget {
  static const String id = 'Preferences';
  @override
  State<info1> createState() => _ProvideInfo();
}

class _ProvideInfo extends State<info1> {
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
                    Text("What's Your Gender",
                        style: TextStyle(
                            color: Color.fromARGB(255, 35, 34, 34),
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (bool? newValue) {}),
                        Text("Male",
                            style: TextStyle(
                                color: Color.fromARGB(255, 35, 34, 34),
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (bool? newValue) {}),
                        SizedBox(height: 50),
                        Text("Female",
                            style: TextStyle(
                                color: Color.fromARGB(255, 35, 34, 34),
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                    Text("What's Your Age",
                        style: TextStyle(
                            color: Color.fromARGB(255, 35, 34, 34),
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                    TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Enter Your Age",
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => info2()));
                          },
                          child: Container(
                            width: double.infinity,
                            child: Center(
                              child: Text(
                                'Next Step',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ))),
                  ]),
            )));
  }
}
