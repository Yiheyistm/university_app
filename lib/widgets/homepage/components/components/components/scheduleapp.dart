import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScheduleApp extends StatelessWidget {
  final List<Map> classestime;
  const ScheduleApp(this.classestime, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule'),
        backgroundColor: Colors.blueGrey.shade700,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: classestime.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      classestime[index]['day'],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey.shade500,
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      height: 20,
                      thickness: 2,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: classestime[index]['class'].length,
                      itemBuilder: (context, count) {
                        var classInfo = classestime[index]['class'][count];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                classInfo['time'],
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blueGrey.shade700,
                                ),
                              ),
                              Text(
                                classInfo['subject'],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey.shade400,
                                ),
                              ),
                              Text(
                                classInfo['room'],
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blueGrey.shade700,
                                ),
                              ),
                              const Divider(
                                color: Colors.grey,
                                height: 20,
                                thickness: 1,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
