import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/pages/pageViews/one_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int indexBottomNavigation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Olá, mundo da AppBar!",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          const OnePage(),
          Container(
            width: 50,
            height: 50,
            color: Colors.yellow,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.purple,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottomNavigation,
        onTap: (int page) {
          setState(() {
            indexBottomNavigation = page;
          });
          _pageController.animateToPage(page,
              duration: const Duration(milliseconds: 300), curve: Curves.ease);
        },
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), label: "1"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), label: "2"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), label: "3")
        ],
      ),
    );
  }
}
