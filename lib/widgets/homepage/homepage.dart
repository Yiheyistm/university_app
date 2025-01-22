import 'package:flutter/material.dart';
import '/widgets/settings/settingmain.dart';
import '../drawer/drawer.dart';
import '/widgets/notification/notification.dart';
import '../grade/grades.dart';
import '../profile/studentprofile.dart';
import '/widgets/homepage/components/dashboard.dart';
import '/models/users.dart';

class HomePage extends StatefulWidget {
  final int index;
  const HomePage(this.index, {super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int screensIndex = 0;

  final List<IconData> _icons = [
    Icons.home,
    Icons.grade,
    Icons.info,
    Icons.settings,
  ];
  late final List<Widget> _screens = [
    Dashboard(UsersData[widget.index], widget.index),
    StudentGrade(UsersData[widget.index], widget.index),
    const StudentNotification(),
    const Settings(),
  ];
  final List<String> titlepage = [
    'DashBoard',
    'Student Grades',
    'Info',
    'Setting',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titlepage[screensIndex],
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 195, 181, 56),
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 3.0,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Profile(UsersData[widget.index].userinfo[widget.index]);
              },
            ),
          );
        },
        backgroundColor: const Color.fromARGB(255, 195, 181, 56),
        child: const Icon(
          Icons.person,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: screensIndex,
        onTap: (index) {
          setState(() {
            screensIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(_icons[0]),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(_icons[1]),
            label: 'Grades',
          ),
          BottomNavigationBarItem(
            icon: Icon(_icons[2]),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(_icons[3]),
            label: 'Settings',
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 195, 181, 56),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
      ),
      endDrawer: const MyDrawer(),
      body: _screens[screensIndex],
    );
  }
}
