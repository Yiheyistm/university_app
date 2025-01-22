import 'package:flutter/material.dart';

class Academics extends StatelessWidget {
  Academics({super.key});
  final List<String> text = [
    'Faculty Of Computer Science',
    'Faculty Of Information Technology',
    'Faculty Of Software Engineering',
    'Faculty Of Physics',
    'Faculty Of Data Science',
    'Faculty Of IoT',
    'Faculty Of Chemistry',
  ];

  final List<String> descriptions = [
    'The Faculty of Computer Science offers a comprehensive curriculum that covers various aspects of computing, programming, and software development.',
    'The Faculty of Information Technology focuses on the study of computer systems, networking, and information management.',
    'The Faculty of Software Engineering provides in-depth knowledge of software design, development, and maintenance.',
    'The Faculty of Physics offers courses that explore the fundamental principles of physics and their applications.',
    'The Faculty of Data Science teaches students how to analyze and interpret complex data to make informed decisions.',
    'The Faculty of IoT (Internet of Things) covers the design and implementation of interconnected devices and systems.',
    'The Faculty of Chemistry provides a thorough understanding of chemical principles and their practical applications.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Academics'),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(
          height: 630,
        ),
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        margin: const EdgeInsets.only(
          top: 20,
          bottom: 10,
        ),
        child: ListView.builder(
          itemCount: text.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.all(10),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              clipBehavior: Clip.antiAlias,
              child: ExpansionTile(
                title: Text(
                  text[index],
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(descriptions[index]),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
