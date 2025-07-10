// ignore_for_file: deprecated_member_use, prefer_const_constructors, unused_import, sort_child_properties_last, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:minds_mugs/screens/plan.dart';
import 'package:minds_mugs/screens/home.dart';
import 'package:minds_mugs/screens/room.dart';

class MembersShip extends StatelessWidget {
  const MembersShip({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Simpleproject(),
    );
  }
}

class Simpleproject extends StatelessWidget {
  const Simpleproject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 15, 15, 15),
          title: Text(
            "Membership Plans",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 193, 170, 144),
            ),
          ),
          centerTitle: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'StudyRoom');
            }, //home page
            icon: const Icon(Icons.arrow_back),
            color: const Color.fromARGB(255, 193, 170, 144),
            iconSize: 25,
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'HomeScreen');
              }, //support page
              icon: const Icon(Icons.arrow_forward_sharp),
              color: const Color.fromARGB(255, 193, 170, 144),
              iconSize: 24.9,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Student Perks & Loyalty Rewards",
                style: TextStyle(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 193, 170, 144),
                    fontWeight: FontWeight.bold),
              ),
              Container(
                child: Text(
                  "Student Discount Plan\nGet 20% off For All Students With Valid ID.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 23, 22, 22),
                  ),
                ),
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.fromLTRB(10, 30, 150, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromARGB(255, 193, 170, 144),
                ),
              ),
              Container(
                child: Text(
                  "Loyalty Program\n Earn Points for every visit and redeem for reeards!",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 24, 24, 24),
                  ),
                ),
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.fromLTRB(10, 30, 150, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromARGB(255, 193, 170, 144),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.fromLTRB(10, 30, 150, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromARGB(255, 105, 84, 65),
                ),

                // image
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          fit: BoxFit.cover,
                          'assets/images/pic11.jpg',
                          width: 700,
                          height: 400,
                        )),
                    SizedBox(height: 10),
                    Text(
                      "Student Study Plan",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 193, 170, 144),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "• Free Wi-Fi\n• 15% discount on all beverages\n• Access to dedicated student study zones\n• Late-night access for cramming sessions\nPrice: \$8/month",
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 23, 22, 22),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.fromLTRB(10, 30, 150, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromARGB(255, 105, 84, 65),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          fit: BoxFit.cover,
                          'assets/images/pic33.jpg',
                          width: 700,
                          height: 250,
                        )),
                    SizedBox(height: 5),
                    Text(
                      "Pro Study Plan",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 193, 170, 144),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "• Quiet, distraction-free zones\n• 20% discount on coffee\n• Professional meeting rooms for video calls\n• Access to networking events\nPrice: \$20/month",
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 23, 22, 22),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.fromLTRB(10, 30, 150, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromARGB(255, 105, 84, 65),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          fit: BoxFit.cover,
                          'assets/images/pic44.jpg',
                          width: 700,
                          height: 250,
                        )),
                    SizedBox(height: 5),
                    Text(
                      "Group Study Plan",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 193, 170, 144),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "• Dedicated group study rooms\n• 10% discount on snacks for groups\n• Whiteboards and collaboration tools\n• 5 free coffees per group visit\nPrice: \$30/month (group of 4)",
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 23, 22, 22),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "User Reviews",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 193, 170, 144),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                        "Charlie: Athari is incredibly kind and approachable!"),
                    Icon(Icons.star,
                        color: Colors.yellow), // Set the color to yellow
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text("Alice: Great study space! "),
                    Icon(Icons.star,
                        color: Colors.yellow), // Set the color to yellow
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Bob: Friendly staff and cozy atmosphere."),
                    Icon(Icons.star,
                        color: Colors.yellow), // Set the color to yellow
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.grey),
                    Icon(Icons.star, color: Colors.grey),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text("Charlie: Perfect for group studies!"),
                    Icon(Icons.star,
                        color: Colors.yellow), // Set the color to yellow
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.grey),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
