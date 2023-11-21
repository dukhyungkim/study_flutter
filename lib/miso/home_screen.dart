import 'package:flutter/material.dart';
import 'package:study_flutter/miso/my_home.dart';
import 'package:study_flutter/miso/my_person.dart';
import 'package:study_flutter/miso/my_redeem.dart';
import 'package:study_flutter/miso/palette.dart';

import 'my_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          MyHome(),
          MyList(),
          MyRedeem(),
          MyPerson(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedItemColor: Palette.primaryColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 32,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                size: 32,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.redeem,
                size: 32,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 32,
              ),
              label: ""),
        ],
      ),
    );
  }
}
