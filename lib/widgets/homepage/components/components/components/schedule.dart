import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:university_project/widgets/homepage/components/components/components/scheduleapp.dart';

class Schedule extends StatefulWidget {
  final List<Map> classestime;
  const Schedule(this.classestime, {super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  String day = DateFormat('EEEE').format(DateTime.now());
  int scheduleIndex = 0;

  @override
  void initState() {
    super.initState();
    switch (day) {
      case 'Monday':
        scheduleIndex = 0;
        break;
      case 'Tuesday':
        scheduleIndex = 1;
        break;
      case 'Wednesday':
        scheduleIndex = 2;
        break;
      case 'Thursday':
        scheduleIndex = 3;
        break;
      case 'Friday':
        scheduleIndex = 4;
        break;
      default:
        scheduleIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ScheduleApp(widget.classestime);
        }));
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blueGrey.shade100,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.48,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'TimeTable',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Icon(Icons.calendar_today, color: Colors.blueGrey.shade700),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              day,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey.shade700),
            ),
            const Divider(color: Colors.black, height: 20, thickness: 2),
            Expanded(
              child: ListView.builder(
                itemCount: widget.classestime[scheduleIndex]['class'].length,
                itemBuilder: (context, index) {
                  var classInfo =
                      widget.classestime[scheduleIndex]['class'][index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          classInfo['time'],
                          style: TextStyle(
                              fontSize: 16, color: Colors.blueGrey.shade700),
                        ),
                        Text(
                          classInfo['subject'],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey.shade900),
                        ),
                        Text(
                          classInfo['room'],
                          style: TextStyle(
                              fontSize: 16, color: Colors.blueGrey.shade700),
                        ),
                        const Divider(
                            color: Colors.grey, height: 20, thickness: 1),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
