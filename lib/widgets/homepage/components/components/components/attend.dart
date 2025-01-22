import 'package:flutter/material.dart';
import '../../../../../models/attendancedata.dart';

class Attendance extends StatelessWidget {
  const Attendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: const Text('Attendance'),
        backgroundColor: Colors.black38,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: subjects[0].attendData.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${subjects[0].attendData[index]['Subjects']}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildAttendanceColumn(
                          context,
                          'ATTEND CLASSES',
                          '${subjects[0].attendData[index]['attend'][0]['atted']}',
                          Colors.green,
                        ),
                        _buildAttendanceColumn(
                          context,
                          'TOTAL LEAVES',
                          '${subjects[0].attendData[index]['attend'][0]['lev']}',
                          Colors.orange,
                        ),
                        _buildAttendanceColumn(
                          context,
                          'TOTAL CLASSES',
                          '${subjects[0].attendData[index]['attend'][0]['lec']}',
                          Colors.red,
                        ),
                      ],
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

  Widget _buildAttendanceColumn(
      BuildContext context, String label, String value, Color color) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
