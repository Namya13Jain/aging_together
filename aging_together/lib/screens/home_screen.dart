import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.8,
        backgroundColor: const Color.fromRGBO(8, 143, 143, 1),
        title: const Text(
          "Home",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'vision');
              },
              child: const Image(
                image: AssetImage("assets/images/logo_no_bg.png"),
                height: 150,
              ),
            ),
            //home
            ListTile(
                leading: const Icon(
                  Icons.home_filled,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'home_screen');
                }),
          ],
        ),
      ),
    );
  }
}
