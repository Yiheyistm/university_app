import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'aboutus.dart';
import 'acedmics.dart';
import 'admission.dart';
import 'directory.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Image.asset('assets/images/superior.png', width: 100),
                  const SizedBox(height: 10),
                  const Text(
                    'AASTU',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutUs(),
                  ),
                );
              },
              child: Column(
                children: [
                  Image(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.08,
                    image: const AssetImage(
                      'assets/images/superior.png',
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'About AASTU',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdmissionPage(),
                  ),
                );
              },
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/admission.svg',
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.08,
                    color: const Color(0xff8d207b),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Admissions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Directories(),
                  ),
                );
              },
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/director.svg',
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.08,
                    color: const Color(0xff8d207b),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Directory',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Academics(),
                  ),
                );
              },
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/acadmics.svg',
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.08,
                    color: const Color(0xff8d207b),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Acadmics',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
