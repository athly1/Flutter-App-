// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:minds_mugs/screens/home.dart';

class MenuCafe extends StatefulWidget {
  const MenuCafe({super.key});
  @override
  State<MenuCafe> createState() => MenuC();
}

class MenuC extends State<MenuCafe> {
  // list for each product
  List<bool> isFavorite =
      List.generate(6, (index) => false); //each element is false

  void changeFavorite(int index) {
    setState(() {
      isFavorite[index] = !isFavorite[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 3,
          backgroundColor: const Color.fromARGB(255, 29, 25, 21),
          title: Text(
            "Menu",
            style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 193, 170, 144),
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'HomeScreen');
            }, //home page
            icon: const Icon(Icons.arrow_back),
            color: const Color.fromARGB(255, 193, 170, 144),
            iconSize: 25,
          ),
          bottom: TabBar(
            indicatorColor: const Color.fromARGB(255, 179, 152, 129),
            labelColor: const Color.fromARGB(255, 179, 152, 129),
            tabs: const [
              Tab(
                icon: Icon(Icons.local_cafe),
                text: "Hot drinks",
              ),
              Tab(
                icon: Icon(Icons.local_drink),
                text: "Cold drinks",
              ),
              Tab(
                icon: Icon(Icons.cake),
                text: "Desserts",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //Hot drinks:
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // First hot coffee
                  productCon('Esspresso', 'assets/images/es1.jpg', 0),
                  SizedBox(height: 20),
                  // Second hot coffee
                  productCon('Hot Latte', 'assets/images/la.jpg', 1),
                  SizedBox(height: 20),
                ],
              ),
            ),
            //Cold drinks:
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  productCon('Ice Americano', 'assets/images/icec.jpg', 2),
                  SizedBox(height: 20),
                  productCon('Ice Latte', 'assets/images/icela.jpg', 3),
                  SizedBox(height: 20),
                ],
              ),
            ),
            //Desserts:
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  productCon('French Toast', 'assets/images/fr.jpg', 4),
                  SizedBox(height: 20),
                  productCon('San Sebastian', 'assets/images/san.jpg', 5),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // method returns wigdt (contanor) with parameters name and image -just for clarity-
  Widget productCon(String name, String imagePath, int index) {
    return Container(
      width: 350,
      height: 350,
      decoration: BoxDecoration(
        color: isFavorite[index]
            ? const Color.fromARGB(255, 187, 150, 173)
            : const Color.fromARGB(255, 150, 138, 123),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromARGB(255, 39, 27, 9),
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Image.asset(
              imagePath,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          IconButton(
            onPressed: () => changeFavorite(index),
            icon: Icon(
              isFavorite[index] ? Icons.favorite : Icons.favorite_border,
              color: isFavorite[index] ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
