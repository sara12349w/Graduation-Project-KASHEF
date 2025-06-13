import 'package:flutter/material.dart';



class InsModel {
  final String title;
  //final int stepNumber;
  final IconData? icon;
  final Color color;
  

  InsModel({
    required this.title,
    //required this.stepNumber,
    required this.icon,
    required this.color,
  });
}

List<InsModel> instructionsList = [
  InsModel(
    title: "Gas Leak Instructions",
    //stepNumber: 1,
    icon: Icons.exit_to_app,
    color: Colors.red,
  ),
  InsModel(
    title: "Smoke Instructions",
    // stepNumber: 2,
    icon: Icons.masks,
    color: Colors.orange,
  ),
  InsModel(
    title: "Gas Leak and Smoke Instructions",
    //stepNumber: 3,
    icon: Icons.arrow_downward,
    color: Colors.blue,
  ),
  // InsModel(
  //   title: "Do not use electrical devices or elevators.",
  //   stepNumber: 4,
  //   icon: Icons.electrical_services,
  //   color: Colors.purple,
  // ),
];
