import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class CollabPage extends StatelessWidget {
  const CollabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Text(
                'Upcoming Experience',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            width: 200,
                            height: 200,
                            color: Colors.brown.shade100,
                            child: Image(
                              image: AssetImage("images/hiking.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '1 Day',
                                style: kTextStyle,
                              ),
                              Text(
                                'Avaliability: Nov,Dec',
                                style: kTextStyle,
                              ),
                              Text(
                                'Riyadh',
                                style: kTextStyle,
                              ),
                              Text(
                                '150 SAR',
                                style: kTextStyle,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )),
              Text(
                'Upcoming Tours',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    width: 200,
                    height: 200,
                    color: Colors.brown.shade100,
                    child: Image(
                      image: AssetImage("images/aseer.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '3 Days',
                        style: kTextStyle,
                      ),
                      Text(
                        'Avaliability: August',
                        style: kTextStyle,
                      ),
                      Text(
                        'Aseer Beach',
                        style: kTextStyle,
                      ),
                      Text(
                        '2500 SAR',
                        style: kTextStyle,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
