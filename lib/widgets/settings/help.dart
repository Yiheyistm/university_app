import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: const [
            Text(
              'Addis Ababa Science and Technology University (AASTU)',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Address:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Kilinto, Addis Ababa, Ethiopia',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Contact Information:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Phone: +251-11-126-7941',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Email: info@aastu.edu.et',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Website:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'http://www.aastu.edu.et',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'About AASTU:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Addis Ababa Science and Technology University (AASTU) is a public university located in Addis Ababa, Ethiopia. It was established in 2011 with the aim of providing high-quality education in science and technology fields. The university offers undergraduate and postgraduate programs in various disciplines including engineering, natural sciences, and technology.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}