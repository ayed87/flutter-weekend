import 'package:chat_app/components/Package_widget.dart';
import 'package:chat_app/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:chat_app/components/roundedCard.dart';
import 'package:chat_app/components/collb_widget.dart';

class homeScreen extends StatefulWidget {
  static const String id = 'chat_screen';

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  String? message;
  dynamic loggedInUser;
  final messageTextControler = TextEditingController();

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: fffff',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(user.email);
      }
    } catch (e) {
      print(e);
    }
  }

  void getStreams() async {
    await for (var snapshot in _firestore.collection('messages').snapshots()) {
      for (var message in snapshot.docs) {
        print(message.data());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: null,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  getStreams();
                  // _auth.signOut();
                  // Navigator.pop(context);
                  //Implement logout functionality
                }),
          ],
          backgroundColor: Color(0xFF9C7C49),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Calender',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            )
          ],
          currentIndex: _selectedIndex,
          // selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Distenation',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    RondedCard(
                      imageLocation: 'images/riyadh.jpeg',
                      nameOfCity: "Riyadh",
                      description: "",
                    ),
                    RondedCard(
                      imageLocation: 'images/khobar.jpeg',
                      nameOfCity: "Khobar",
                      description: "",
                    ),
                    RondedCard(
                      imageLocation: 'images/jeddah.jpeg',
                      nameOfCity: "Jeddah",
                      description: "",
                    ),
                    RondedCard(
                      imageLocation: 'images/alula.jpg',
                      nameOfCity: "Al-Ula",
                      description: "",
                    ),
                    RondedCard(
                      imageLocation: 'images/Jazan.png',
                      nameOfCity: "Jazan",
                      description: "",
                    ),
                    RondedCard(
                      imageLocation: 'images/jeddah.jpeg',
                      nameOfCity: "Jazan",
                      description: "",
                    ),
                    RondedCard(
                      imageLocation: 'images/abha.jpg',
                      nameOfCity: "Abha",
                      description: "",
                    ),
                  ],
                ),
              ),
              Text(
                'Collab',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onDoubleTap: () {
                        Navigator.pushNamed(context, "Collab Page");
                      },
                      child: CollbCard(
                        imageLocation: 'images/masart.jpg',
                        nameOfCity: "Masarat",
                        description: "Location: Riyadh\nPhone:+966566445538",
                      ),
                    ),
                    CollbCard(
                      imageLocation: 'images/taayuush.jpg',
                      nameOfCity: "Taayuush",
                      description: "Location: Riyadh\nPhone:+966558766454",
                    ),
                    CollbCard(
                      imageLocation: 'images/HUSAAK.png',
                      nameOfCity: "HUSAAK",
                      description: "Location: ALULA\nPhone:+966501296943",
                    ),
                  ],
                ),
              ),
              Text(
                'Packages',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              Row(
                children: [
                  PackageCard(
                    imageLocation: 'images/trad.jpeg',
                    nameOfCity: "Traditional experince",
                    description: "",
                  ),
                  PackageCard(
                    imageLocation: 'images/luxury.jpg',
                    nameOfCity: "Luxury experince",
                    description: "",
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
