import 'package:flutter/material.dart';

class User {
  String firstName, lastName, bio, location, defaultLicense;
  String username;
  String imagePath;

  User(
      {Key? key,
      required this.username,
      this.firstName = "",
      this.lastName = "",
      this.bio = "",
      this.location = "",
      this.defaultLicense = "",
      this.imagePath = ""});
}

List<User> users = List.generate(
  demo_data_users.length,
  (index) => User(
    username: demo_data_users[index]['username'],
    firstName: demo_data_users[index]['firstName'],
    lastName: demo_data_users[index]['lastName'],
    bio: demo_data_users[index]['bio'],
    location: demo_data_users[index]['location'],
    defaultLicense: demo_data_users[index]['defaultLicense'],
    imagePath: demo_data_users[index]['imagePath'],
  ),
);

const List demo_data_users = [
  {
    "username": "userA",
    "firstName": "",
    "lastName": "",
    "bio": "",
    "location": "",
    "defaultLicense": "",
    "imagePath": "images/user_5.png"
  },
  {
    "username": "userB",
    "firstName": "",
    "lastName": "",
    "bio": "",
    "location": "",
    "defaultLicense": "",
    "imagePath": "images/user_2.png"
  },
  {
    "username": "userC",
    "firstName": "",
    "lastName": "",
    "bio": "",
    "location": "",
    "defaultLicense": "",
    "imagePath": "images/user_3.png"
  },
  {
    "username": "userD",
    "firstName": "",
    "lastName": "",
    "bio": "",
    "location": "",
    "defaultLicense": "",
    "imagePath": "images/user_4.png"
  }
];
