import 'package:flutter/material.dart';

class Roles extends StatelessWidget {
  const Roles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: const Color.fromRGBO(8, 143, 143, 1),
        title: const Text(
          "Role",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'signup');
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 20,
            )),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Select your Role",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'home_screen');
              },
              child: Container(
                height: 170,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(8, 143, 143, 1),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: const Color.fromARGB(255, 57, 57, 57),
                    )),
                child: Center(
                  child: Text(
                    "Old Buddy",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            //
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'intro');
              },
              child: Container(
                height: 170,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(8, 143, 143, 1),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: const Color.fromARGB(255, 57, 57, 57),
                    )),
                child: Center(
                  child: Text(
                    "Student",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
