import 'package:flutter/material.dart';
import '../../models/grade.dart';

class GradeBox extends StatelessWidget {
  final Grade obj;
  final int subjectIndex;

  GradeBox(this.obj, this.subjectIndex, {super.key});

  final List<String> marksText = [
    'Quiz (10%)',
    'Mid Term (40%)',
    'Final Term (50%)',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: obj.subjects[subjectIndex]['Marks']?.length ?? 0,
        itemBuilder: (context, index) {
          final marks = obj.subjects[subjectIndex]['Marks'][index];
          print('#######################');
          print(obj.subjects[subjectIndex]);
          print(marks);
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  marksText[index],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildCircleAvatar(
                      context,
                      '${marks['om']}',
                      'OBTAIN MARKS',
                    ),
                    _buildCircleAvatar(
                      context,
                      '${marks['tm']}',
                      'TOTAL MARKS',
                    ),
                    _buildCircleAvatar(
                      context,
                      '${marks['per']}',
                      'PERCENTAGE%',
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildCircleAvatar(BuildContext context, String value, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue.shade100,
          child: Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade900,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.blue.shade900,
          ),
        ),
      ],
    );
  }
}
