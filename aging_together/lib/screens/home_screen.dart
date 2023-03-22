import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  //for drawer text
  static const TextStyle drawerText = TextStyle(
      color: Color.fromARGB(255, 35, 34, 34),
      fontSize: 17,
      fontWeight: FontWeight.w600);

  //for container text
  static const TextStyle cardText = TextStyle(
      // color: Color.fromARGB(255, 35, 34, 34),
      color: Colors.white,
      fontSize: 17,
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: const Color.fromRGBO(8, 143, 143, 1),
        title: const Image(
          image: AssetImage("assets/images/logo_white.png"),
          height: 100,
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                UniconsLine.paragraph,
                color: Colors.white,
                size: 24,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
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
                  UniconsLine.home_alt,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'Home',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'home_screen');
                }),
            //caretaker
            ListTile(
                leading: const Icon(
                  UniconsLine.schedule,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'Book Caretaker',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'care_taker');
                }),
            //companion
            ListTile(
                leading: const Icon(
                  UniconsLine.chat_bubble_user,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'Find companion',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'companion');
                }),

            // Medical Reminders
            ListTile(
                leading: const Icon(
                  UniconsLine.clock,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'Reminders',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'reminders');
                }),
            //Leraning Center
            ListTile(
                leading: const Icon(
                  UniconsLine.file_contract,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'Learn',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'learn');
                }),
            //About us
            ListTile(
                leading: const Icon(
                  UniconsLine.question_circle,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'About Us',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'about_us');
                }),
          ],
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //2nd Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/2.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //3rd Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/3.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/4.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th image of slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/5.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //6th image of slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/6.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 250.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 8,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 400),
              viewportFraction: 0.8,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                //spacing
                const SizedBox(
                  height: 30,
                ),
                //1st card
                GestureDetector(
                  //add reminders page
                  onTap: () {},
                  child: Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(8, 143, 143, 1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: const Color.fromARGB(255, 57, 57, 57),
                        )),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 12.0,
                                top: 10,
                              ),
                              child: Text(
                                "Humans are more \nfrequently required to be \nreminded than informed. \nSet reminders for your \nmedicines and other stuff.",
                                style: cardText,
                              ),
                            ),
                            Center(
                              child: Icon(
                                UniconsLine.clock,
                                size: 40,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //2nd card
                //spacing
                const SizedBox(
                  height: 30,
                ),

                GestureDetector(
                  //add companions page
                  onTap: () {},
                  child: Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(8, 143, 143, 1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: const Color.fromARGB(255, 57, 57, 57),
                        )),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 12.0,
                                top: 10,
                              ),
                              child: Text(
                                "Find a group of people\nwho challenge and \ninspire you; spend a \nlot of time with them,\nand it will change your\n life.",
                                style: cardText,
                              ),
                            ),
                            Center(
                              child: Icon(
                                Icons.group,
                                size: 40,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //3rd card
                //spacing
                const SizedBox(
                  height: 30,
                ),

                GestureDetector(
                  //add caretakers page
                  onTap: () {
                    Navigator.pushNamed(context, 'care_taker');
                  },
                  child: Container(
                    height: 180,
                    width: 300,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(8, 143, 143, 1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: const Color.fromARGB(255, 57, 57, 57),
                        )),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 12.0,
                                top: 10,
                              ),
                              child: Text(
                                "To care for those who \nonce cared for us is one \nof the highest honors. \nYou are the pillars \nstanding strong for us. \nSo it's our time to stand \nfor you.",
                                style: cardText,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.person_4_outlined,
                                size: 40,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //4th card
                //spacing
                const SizedBox(
                  height: 30,
                ),

                GestureDetector(
                  //add learning page
                  onTap: () {},
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
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 12.0,
                                top: 10,
                              ),
                              child: Text(
                                "You are never too old \nto set another goal or \nto dream a new dream. \nExplore the various \ncourses and fly \nhigh with the wings \nyou acquire.",
                                style: cardText,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                UniconsLine.file_alt,
                                size: 40,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
