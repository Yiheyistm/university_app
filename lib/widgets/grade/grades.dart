import 'dart:math';
import 'package:flutter/material.dart';
import '/models/grade.dart';
import '../../models/users.dart';
import 'gradebox.dart';

class StudentGrade extends StatefulWidget {
  final UsersProfile user;
  final int userIndex;

  const StudentGrade(
    this.user,
    this.userIndex, {
    super.key,
  });

  @override
  State<StudentGrade> createState() => _StudentGradeState();
}

class _StudentGradeState extends State<StudentGrade> {
  int subjectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromARGB(137, 23, 23, 23)),
      margin: const EdgeInsets.only(
        top: 17,
        bottom: 50,
      ),
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints.expand(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:
                  widget.user.usergrades[widget.userIndex].subjects.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: FilterChip(
                    label: Text(
                      '${widget.user.usergrades[widget.userIndex].subjects[index]['Subjects']}',
                      style: TextStyle(
                        color:
                            subjectIndex == index ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    selected: subjectIndex == index,
                    selectedColor: Colors.blue.shade900,
                    backgroundColor: Colors.white,
                    onSelected: (bool selected) {
                      setState(() {
                        subjectIndex = selected ? index : subjectIndex;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    showCheckmark: false,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GradeBox(
                widget.user.usergrades[widget.userIndex], subjectIndex),
          ),
        ],
      ),
    );
  }
}
