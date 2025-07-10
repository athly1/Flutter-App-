// ignore_for_file: deprecated_member_use, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:minds_mugs/screens/home.dart';

// Predefined
class StudyRoom extends StatelessWidget {
  const StudyRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar need on press button
      appBar: AppBar(
        elevation: 3,
        backgroundColor:
            const Color.fromARGB(255, 29, 25, 21), // Dark background
        title: const Text(
          "Study Room", //app bar text and its color
          style: TextStyle(
            color: Color.fromARGB(255, 193, 170, 144), // Light color
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          //on left side
          onPressed: () {
            Navigator.pushNamed(context, 'HomeScreen');
          },
          icon: const Icon(Icons.arrow_back),
          color: const Color.fromARGB(255, 193, 170, 144), // Light icon
          iconSize: 25,
        ),
        actions: [
          IconButton(
            onPressed: () {
              //sam
            }, //support page
            icon: const Icon(Icons.support_agent),
            color: const Color.fromARGB(255, 193, 170, 144),
            iconSize: 24.9,
          ),
        ],
      ),
      body: SingleChildScrollView(
        //scrolling abvisly takes one child: column;takes childeren
        padding:
            const EdgeInsets.all(16.0), //Used to give space around the content
        child: Column(
          //has 8 children, 5 containers and 3 sized boxs
          children: [
            //Text
            Container(
              padding: const EdgeInsets.all(
                  10), //space between the container and its child
              margin: const EdgeInsets.all(10), //space outside
              color: const Color.fromARGB(
                  255, 193, 170, 144), // Light container background
              child: const Text(
                "Welcome to the Study Cafe! Find your space and focus on your studies in a peaceful environment.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(
                      255, 29, 25, 21), // Dark text color for contrast
                ),
              ),
            ),
            SizedBox(height: 20), //space
            // Room 1: Quiet Study
            Container(
              height: 350,
              width: double.infinity, //full width
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                    255, 105, 84, 65), // Container background
                borderRadius: BorderRadius.circular(12), //الحواف حقت الكونتينر
                border: Border.all(
                  color: const Color.fromARGB(255, 193, 170, 144),
                  width: 3.0,
                ),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //image:
                  ClipRRect(
                    //make the image rounded
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(12)),
                    child: Image.asset("assets/images/quiet_room.jpg",
                        fit: BoxFit.cover, height: 150, width: double.infinity),
                  ),
                  //Room name:
                  Padding(
                    padding: EdgeInsets.all(12.0), //inside
                    child: Text(
                      "Quiet Study Room",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 193, 170, 144),
                      ),
                    ),
                  ),
                  //decription for the room:
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 12.0), // left and right padding of the row
                    child: Text(
                      "A peaceful and serene space designed for focused, individual study. This room ensures minimal distractions, providing the perfect environment to concentrate on your work in silence. Ideal for students or professionals who need to dive deep into their studies or projects without interruption.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey, // grey description for subtler text
                      ),
                    ),
                  ),
                  //icons:
                  Padding(
                    // space between the room description and the icons
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0), // left and right padding
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Tooltip(
                          message: "Wifi Available",
                          child:
                              Icon(Icons.wifi, color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 8),
                        Tooltip(
                          message: "Power Supply",
                          child:
                              Icon(Icons.power, color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 8),
                        Tooltip(
                          message: "Quit area",
                          child: Icon(Icons.volume_off,
                              color: Colors.white, size: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Room 2: Group Study
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                    255, 105, 84, 65), // Container background
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color.fromARGB(255, 193, 170, 144),
                  width: 3.0,
                ),
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // aligned to the left
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(12)),
                    child: Image.asset("assets/images/meeting_room.jpg",
                        fit: BoxFit.cover, height: 150, width: double.infinity),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0), //inside
                    child: Text(
                      "Group Study Room",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 193, 170, 144),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 12.0), // left and right padding of the row
                    child: Text(
                      "This room is designed for group collaborations, meetings, or study sessions with classmates or colleagues. Equipped with comfortable seating and ample workspace, it's the ideal spot to discuss ideas, brainstorm, or prepare for group presentations in a focused yet relaxed setting.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey, // grey description for subtler text
                      ),
                    ),
                  ),
                  Padding(
                    // space between the room description and the icons
                    padding: EdgeInsets.symmetric(
                        horizontal: 12.0), // left and right padding
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Tooltip(
                          message: "Wifi Available",
                          child:
                              Icon(Icons.wifi, color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 8),
                        Tooltip(
                          message: "Group Seating",
                          child:
                              Icon(Icons.group, color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 8),
                        Tooltip(
                          message: "Power Supply",
                          child:
                              Icon(Icons.power, color: Colors.white, size: 20),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            // Room 3: Open Discussion
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                    255, 105, 84, 65), // Container background
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color.fromARGB(255, 193, 170, 144),
                  width: 3.0,
                ),
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // aligned to the left
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(12)),
                    child: Image.asset("assets/images/public_space.jpg",
                        fit: BoxFit.cover, height: 150, width: double.infinity),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Open Discussion Room",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 193, 170, 144),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 12.0), // left and right padding of the row
                    child: Text(
                      "An open and casual area perfect for those who thrive in a more social or interactive atmosphere. Whether you're working on a project or catching up with friends, this space provides a dynamic environment with a bit more energy and conversation flowing around you.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey, // grey description for subtler text
                      ),
                    ),
                  ),
                  Padding(
                    // space between the room description and the icons
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0), // left and right padding
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Tooltip(
                          message: "Wifi Available", // تحسين التعليق
                          child:
                              Icon(Icons.wifi, color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 8),
                        Tooltip(
                          message: "Group Seating", // تحسين التعليق
                          child: Icon(Icons.group_work,
                              color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 8),
                        Tooltip(
                          message: "Discussion area", // تحسين التعليق
                          child:
                              Icon(Icons.chat, color: Colors.white, size: 20),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            // Room 4: Outdoor Study Area
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                    255, 105, 84, 65), // Container background
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color.fromARGB(255, 193, 170, 144),
                  width: 3.0,
                ),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(12)),
                    child: Image.asset("assets/images/outdoor_study.jpg",
                        fit: BoxFit.cover, height: 150, width: double.infinity),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Outdoor Study Area",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 193, 170, 144),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 12.0), // left and right padding of the row
                    child: Text(
                      "Enjoy fresh air and natural surroundings while staying productive in our outdoor study area. This space combines the benefits of nature with the convenience of a well-equipped workspace, ideal for those who prefer a relaxed, open-air environment to read, study, or work on creative tasks.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey, // grey description for subtler text
                      ),
                    ),
                  ),
                  Padding(
                    // space between the room description and the icons
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0), // left and right padding
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Tooltip(
                          message: " Wifi Available",
                          child:
                              Icon(Icons.wifi, color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 8),
                        Tooltip(
                          message: "Open area",
                          child: Icon(Icons.wb_sunny,
                              color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 8),
                        Tooltip(
                          message: "coffee",
                          child: Icon(Icons.local_cafe,
                              color: Colors.white, size: 20),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
