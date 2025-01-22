import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/1.jpg',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/images/superior.png',
                          height: 120,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(right: 10),
              child: const Text(
                'Addis Ababa Science and Technology University (AASTU) is a prominent institution dedicated to advancing science and technology education in Ethiopia. AASTU aims to foster innovation, research, and development to contribute to the country\'s socio-economic growth. The university offers a range of undergraduate and postgraduate programs designed to equip students with the skills and knowledge required to excel in various scientific and technological fields.',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
