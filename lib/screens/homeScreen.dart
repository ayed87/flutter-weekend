import 'package:flutter/material.dart';
import 'package:flutter_weekend_project/components/roundedCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
          backgroundColor: Color(0xFF9C7C49),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
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
        ),
        body: ListView(
          children: [
            SingleChildScrollView(
              child: Row(
                children: [Text("data")],
              ),
            ),
            RondedCard(
              color: Colors.white,
            ),
            RondedCard(
              color: Colors.white,
            ),
            RondedCard(
              color: Colors.white,
            ),
            RondedCard(
              color: Colors.white,
            ),
            RondedCard(
              color: Colors.white,
            )
          ],
        ));
  }
}
