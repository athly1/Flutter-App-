// ignore_for_file: deprecated_member_use, prefer_const_constructors, unused_import
import 'package:flutter/material.dart';
import 'package:minds_mugs/screens/membership.dart';
import 'package:minds_mugs/screens/home.dart';

class Plan extends StatefulWidget {
  const Plan({super.key});

  @override
  State<Plan> createState() => _PlanState();
}

class _PlanState extends State<Plan> {
  String? selectedPlan; // This will store the selected plan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor:
            const Color.fromARGB(255, 29, 25, 21), // Dark background
        title: const Text(
          "Study Plans", //app bar text and its color
          style: TextStyle(
            color: Color.fromARGB(255, 193, 170, 144), // Light color
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          //on left side
          onPressed: () {
            Navigator.pushNamed(context, 'membership');
          },
          icon: const Icon(Icons.arrow_back),
          color: const Color.fromARGB(255, 193, 170, 144), // Light icon
          iconSize: 25,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // Changed Row to Column to stack the RadioListTile vertically
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Plan",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 193, 170, 144),
              ),
            ),
            RadioListTile(
              title: Text("Student Study Plan"),
              value: "Student Study Plan",
              groupValue: selectedPlan,
              onChanged: (value) {
                setState(() {
                  selectedPlan = value; // Update the selected plan
                });
              },
            ),
            RadioListTile(
              title: Text("Pro Study Plan"),
              value: "Pro Study Plan",
              groupValue: selectedPlan,
              onChanged: (value) {
                setState(() {
                  selectedPlan = value; // Update the selected plan
                });
              },
            ),
            RadioListTile(
              title: Text("Group Study Plan"),
              value: "Group Study Plan",
              groupValue: selectedPlan,
              onChanged: (value) {
                setState(() {
                  selectedPlan = value; // Update the selected plan
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
