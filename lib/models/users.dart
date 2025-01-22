import 'timetable.dart';
import 'grade.dart';

class UsersProfile {
  String userid;
  String password;
  List<TimeTable> usertimetable;
  List<Grade> usergrades;
  List<UserInformation> userinfo;
  UsersProfile(
    this.userid,
    this.password,
    this.usertimetable,
    this.usergrades,
    this.userinfo,
  );
}

class UserInformation {
  String regno, name, fname, email, phoneno;
  UserInformation(this.regno, this.name, this.fname, this.email, this.phoneno);
}

List<UserInformation> userdata = [
  UserInformation(
    'ADD12345678',
    'Abebe Bekele',
    'Bekele Alemu',
    'bcsm-f20-392',
    '0912345678',
  ),
  UserInformation(
    'ADD12345679',
    'Kebede Alemu',
    'Alemu Abebe',
    'bcsm-f20-393',
    '0912345679',
  ),
  UserInformation(
    'ADD12345680',
    'Mulugeta Tesfaye',
    'Tesfaye Alehegn',
    'bcsm-f20-394',
    '0912345680',
  )
];

List<UsersProfile> UsersData = [
  UsersProfile('abebe', '1234', studData, studGrades, userdata),
  UsersProfile('kebede', '1234', studData, studGrades, userdata),
  UsersProfile('mulugeta', '1234', studData, studGrades, userdata),
  UsersProfile('tesfaye', '1234', studData, studGrades, userdata),
  UsersProfile('alemayehu', '1234', studData, studGrades, userdata),
];
