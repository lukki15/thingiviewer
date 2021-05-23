import 'package:flutter/material.dart';
import 'package:thingiviewer/models/User.dart';

class Thingi {
  String name, license, category, description, instructions;
  bool? isWip;
  List<String> tags;
  User owner;
  String imagePath;

  Thingi({
    Key? key,
    required this.owner,
    required this.imagePath,
    this.name = "",
    this.license = "",
    this.category = "",
    this.description = "",
    this.instructions = "",
    this.isWip = false,
    List<String>? tags,
  }) : tags = tags ?? [];
}

List<Thingi> thingies = List.generate(
  demo_data_thingies.length,
  (index) => Thingi(
    owner: users[index % users.length],
    imagePath: demo_data_thingies[index]['imagePath'],
    name: demo_data_thingies[index]['name'],
    license: demo_data_thingies[index]['license'],
    category: demo_data_thingies[index]['category'],
    description: demo_data_thingies[index]['description'],
    instructions: demo_data_thingies[index]['instructions'],
    isWip: demo_data_thingies[index]['isWip'],
    tags: demo_data_thingies[index]['tags'],
  ),
);

const List demo_data_thingies = [
  {
    "name": "Name 1",
    "license": "MIT",
    "category": "3D printing",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
    "instructions":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
    "isWip": false,
    "tags": ["Lorem", "ipsum", "dolor"],
    "imagePath": "images/Img_0.png",
  },
  {
    "name": "Name 2",
    "license": "MIT",
    "category": "3D printing",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
    "instructions":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
    "isWip": false,
    "tags": ["Lorem", "ipsum", "dolor"],
    "imagePath": "images/Img_1.png",
  },
  {
    "name": "Name 3",
    "license": "MIT",
    "category": "3D printing",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
    "instructions":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
    "isWip": false,
    "tags": ["Lorem", "ipsum", "dolor"],
    "imagePath": "images/Img_2.png",
  },
  {
    "name": "Name 4",
    "license": "MIT",
    "category": "3D printing",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
    "instructions":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
    "isWip": false,
    "tags": ["Lorem", "ipsum", "dolor"],
    "imagePath": "images/Img_0.png",
  }
];
