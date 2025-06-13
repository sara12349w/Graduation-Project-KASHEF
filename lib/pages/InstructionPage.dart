// // // import 'package:flutter/material.dart';

// // // class InstructionPage extends StatelessWidget {
// // //   const InstructionPage({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.white, // Set the background color to white
// // //       appBar: AppBar(
// // //         backgroundColor: Colors.white,
// // //         elevation: 0,
// // //         leading: IconButton(
// // //           icon: Icon(Icons.arrow_back, color: Colors.black),
// // //           onPressed: () {
// // //             Navigator.pop(context); // Go back to the previous page
// // //           },
// // //         ),
// // //         centerTitle: true,
// // //         title: Text(
// // //           'Instructions',
// // //           style: TextStyle(
// // //             color: Colors.black,
// // //             fontSize: 24,
// // //             fontWeight: FontWeight.bold,
// // //           ),
// // //         ),
// // //       ),
// // //       body: Column(
// // //         children: [
// // //           SizedBox(height: 16.0),

// // //           // Instruction message with pin icon
// // //           Container(
// // //             margin: EdgeInsets.symmetric(horizontal: 16.0),
// // //             padding: EdgeInsets.all(16.0),
// // //             decoration: BoxDecoration(
// // //               color: Colors.grey[300],
// // //               borderRadius: BorderRadius.circular(30),
// // //             ),
// // //             child: Row(
// // //               children: [
// // //                 Icon(
// // //                   Icons.pin_drop,
// // //                   color: Colors.yellow,
// // //                 ),
// // //                 SizedBox(width: 8.0),
// // //                 Expanded(
// // //                   child: Text(
// // //                     'Remember, your safety is the utmost priority when dealing with gas leak.',
// // //                     style: TextStyle(
// // //                       color: Colors.black,
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //           SizedBox(height: 16.0),

// // //           // Instructions list
// // //           Expanded(
// // //             child: ListView(
// // //               padding: EdgeInsets.symmetric(horizontal: 16.0),
// // //               children: List.generate(4, (index) {
// // //                 final instructions = [
// // //                   "Turn off the gas supply at the main valve or affected area.",
// // //                   "Put on a respirator mask, gloves, and protective goggles.",
// // //                   "Turn on the building's central ventilation system.",
// // //                   "Ensure any gas detector or automatic shut-off systems are activated.",
// // //                 ];

// // //                 return ListTile(
// // //                   leading: CircleAvatar(
// // //                     backgroundColor: Colors.blue,
// // //                     child: Text(
// // //                       '${index + 1}',
// // //                       style: TextStyle(color: Colors.white),
// // //                     ),
// // //                   ),
// // //                   title: Text(instructions[index]),
// // //                 );
// // //               }),
// // //             ),
// // //           ),
// // //           SizedBox(height: 16.0),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:flutter_kashef/models/instrcutionsModel.dart';
// // import 'package:flutter_kashef/pages/gasInstructionsPage.dart';
// // import 'package:flutter_kashef/pages/mixtureInstructionsPage.dart';
// // import 'package:flutter_kashef/pages/smokeInstructionsPage.dart';

// // class InstructionPage extends StatefulWidget {
// //   const InstructionPage({super.key});

// //   @override
// //   State<InstructionPage> createState() => _InstructionPageState();
// // }

// // class _InstructionPageState extends State<InstructionPage> {
// //   List pages = [
// //     GasLeakInstructionPage(),
// //     SmokeInstructionsPage(),
// //     GasSmokeLeakInstructionPage(),
// //     //TODO: change this page , this is just a placeholder  page , make sure to change it later
// //     //GasSmokeLeakInstructionPage(),
// //   ];
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.grey[100],
// //       appBar: AppBar(
// //         backgroundColor: Colors.white,
// //         elevation: 1,
// //         leading: IconButton(
// //           icon: Icon(Icons.arrow_back, color: Colors.black),
// //           onPressed: () {
// //             Navigator.pop(context);
// //           },
// //         ),
// //         centerTitle: true,
// //         title: Text(
// //           'Safety Instructions',
// //           style: TextStyle(
// //             color: Colors.black,
// //             fontSize: 24,
// //             fontWeight: FontWeight.bold,
// //           ),
// //         ),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.symmetric(horizontal: 16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             SizedBox(height: 16.0),

// //             // Highlighted instruction header
// //             Container(
// //               padding: EdgeInsets.all(16.0),
// //               decoration: BoxDecoration(
// //                 color: Colors.yellow[100],
// //                 borderRadius: BorderRadius.circular(15),
// //                 boxShadow: [
// //                   BoxShadow(
// //                     color: Colors.yellow.withOpacity(0.2),
// //                     spreadRadius: 2,
// //                     blurRadius: 6,
// //                     offset: Offset(0, 3),
// //                   ),
// //                 ],
// //               ),
// //               child: Row(
// //                 children: [
// //                   Icon(
// //                     Icons.warning_amber_rounded,
// //                     color: Colors.orange,
// //                     size: 30,
// //                   ),
// //                   SizedBox(width: 12.0),
// //                   Expanded(
// //                     child: Text(
// //                       'Ensure safety first when dealing with smoke leaks.',
// //                       style: TextStyle(
// //                         color: Colors.black87,
// //                         fontSize: 16,
// //                         fontWeight: FontWeight.w600,
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             SizedBox(height: 24.0),

// //             Expanded(
// //               child: ListView.builder(
// //                 shrinkWrap: true,
// //                 itemCount: instructionsList.length,
// //                 itemBuilder: (context, index) {
// //                   return GestureDetector(
// //                     onTap: () {
// //                       Navigator.of(context).push(MaterialPageRoute(
// //                           builder: (context) => pages[index]));
// //                     },
// //                     child: _buildInstructionItem(
// //                       instructionsList[index].title,
// //                       index + 1, // Passing the index + 1 as the step number
// //                       instructionsList[index].icon!,
// //                       instructionsList[index].color,
// //                      // instructionsList[index].icon!,
// //                       //instructionsList[index].color,
// //                     ),
// //                   );
// //                 },
// //               ),
// //             ),
// //             SizedBox(height: 20.0),

// //             // Civil Defense number as a prominent note
// //             Center(
// //               child: Container(
// //                 padding: EdgeInsets.all(16.0),
// //                 decoration: BoxDecoration(
// //                   color: Colors.red[50],
// //                   borderRadius: BorderRadius.circular(12),
// //                   boxShadow: [
// //                     BoxShadow(
// //                       color: Colors.red.withOpacity(0.2),
// //                       spreadRadius: 2,
// //                       blurRadius: 8,
// //                       offset: Offset(0, 3),
// //                     ),
// //                   ],
// //                 ),
// //                 child: Text(
// //                   "Civil Defense Number : 998",
// //                   style: TextStyle(
// //                     color: Colors.red[900],
// //                     fontSize: 18.0,
// //                     fontWeight: FontWeight.bold,
// //                   ),
// //                   textAlign: TextAlign.center,
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 20.0),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   // Enhanced instruction item widget
// //   Widget _buildInstructionItem(
// //       String instruction, int number, IconData icon, Color iconColor) {
// //     return Container(
// //       margin: EdgeInsets.only(bottom: 16.0),
// //       padding: EdgeInsets.all(16.0),
// //       decoration: BoxDecoration(
// //         color: Colors.white,
// //         borderRadius: BorderRadius.circular(15),
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.grey.withOpacity(0.15),
// //             spreadRadius: 2,
// //             blurRadius: 8,
// //             offset: Offset(0, 3),
// //           ),
// //         ],
// //       ),
// //       child: Row(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           CircleAvatar(
// //             backgroundColor: iconColor.withOpacity(0.2),
// //             child: Icon(
// //               icon,
// //               color: iconColor,
// //               size: 20,
// //             ),
// //             radius: 20,
// //           ),
// //           SizedBox(width: 16.0),
// //           Expanded(
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Text(
// //                   "Step $number",
// //                   style: TextStyle(
// //                     color: iconColor,
// //                     fontSize: 14,
// //                     fontWeight: FontWeight.bold,
// //                   ),
// //                 ),
// //                 SizedBox(height: 4.0),
// //                 Text(
// //                   instruction,
// //                   style: TextStyle(
// //                     color: Colors.black87,
// //                     fontSize: 16.0,
// //                     height: 1.5,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter_kashef/models/instrcutionsModel.dart';
// import 'package:flutter_kashef/pages/gasInstructionsPage.dart';
// import 'package:flutter_kashef/pages/mixtureInstructionsPage.dart';
// import 'package:flutter_kashef/pages/smokeInstructionsPage.dart';

// class InstructionPage extends StatefulWidget {
//   const InstructionPage({super.key});

//   @override
//   State<InstructionPage> createState() => _InstructionPageState();
// }

// class _InstructionPageState extends State<InstructionPage> {
//   List pages = [
//     GasLeakInstructionPage(),
//     SmokeInstructionsPage(),
//     GasSmokeLeakInstructionPage(),
//     //TODO: change this page , this is just a placeholder  page , make sure to change it later
//     //GasSmokeLeakInstructionPage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         centerTitle: true,
//         title: Text(
//           'Safety Instructions',
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 16.0),

//             // Highlighted instruction header
//             Container(
//               padding: EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Colors.yellow[100],
//                 borderRadius: BorderRadius.circular(15),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.yellow.withOpacity(0.2),
//                     spreadRadius: 2,
//                     blurRadius: 6,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.warning_amber_rounded,
//                     color: Colors.orange,
//                     size: 30,
//                   ),
//                   SizedBox(width: 12.0),
//                   Expanded(
//                     child: Text(
//                       'Ensure safety first when dealing with smoke leaks.',
//                       style: TextStyle(
//                         color: Colors.black87,
//                         fontSize: 16,
//                            fontWeight: FontWeight.bold,
//                        // fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 24.0),

//             Expanded(
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: instructionsList.length,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => pages[index]));
//                     },
//                     child: _buildInstructionItem(
//                       instructionsList[index].title,
//                       instructionsList[index].icon!,
//                       instructionsList[index].color,
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: 20.0),

//             // Civil Defense number as a prominent note
//             Center(
//               child: Container(
//                 padding: EdgeInsets.all(16.0),
//                 decoration: BoxDecoration(
//                   color: Colors.red[50],
//                   borderRadius: BorderRadius.circular(12),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.red.withOpacity(0.2),
//                       spreadRadius: 2,
//                       blurRadius: 8,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: Text(
//                   "Civil Defense Number: 998",
//                   style: TextStyle(
//                     color: Colors.red[900],
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20.0),
//           ],
//         ),
//       ),
//     );
//   }

//   // Instruction item widget without the step number
//   Widget _buildInstructionItem(String instruction, IconData icon, Color iconColor) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 16.0),
//       padding: EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.15),
//             spreadRadius: 2,
//             blurRadius: 8,
//             offset: Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CircleAvatar(
//             backgroundColor: iconColor.withOpacity(0.2),
//             child: Icon(
//               icon,
//               color: iconColor,
//               size: 20,
//             ),
//             radius: 20,
//           ),
//           SizedBox(width: 16.0),
//           Expanded(
//             child: Text(
//               instruction,
//               style: TextStyle(
//                 color: Colors.black87,
//                 fontSize: 16.0,
//                 height: 1.5,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_kashef/models/instrcutionsModel.dart';
import 'package:flutter_kashef/pages/gasInstructionsPage.dart';
import 'package:flutter_kashef/pages/mixtureInstructionsPage.dart';
import 'package:flutter_kashef/pages/smokeInstructionsPage.dart';

class InstructionPage extends StatefulWidget {
  const InstructionPage({super.key});

  @override
  State<InstructionPage> createState() => _InstructionPageState();
}

class _InstructionPageState extends State<InstructionPage> {
  List pages = [
    GasLeakInstructionPage(),
    SmokeInstructionsPage(),
    GasSmokeLeakInstructionPage(),
    //TODO: change this page, this is just a placeholder page, make sure to change it later
    //GasSmokeLeakInstructionPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'Safety Instructions',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),

            // Highlighted instruction header
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.yellow.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.warning_amber_rounded,
                    color: Colors.orange,
                    size: 30,
                  ),
                  SizedBox(width: 12.0),
                  Expanded(
                    child: Text(
                      'Ensure safety first when dealing with leaks.',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.0),

            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: instructionsList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => pages[index]));
                    },
                    child: _buildInstructionItem(
                      instructionsList[index].title,
                      instructionsList[index].icon!,
                      instructionsList[index].color,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20.0),

            // Civil Defense number as a prominent note
            Center(
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Text(
                  "Call Number: 998",
                  style: TextStyle(
                    color: Colors.red[900],
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  // Instruction item widget without the step number
  Widget _buildInstructionItem(String instruction, IconData icon, Color iconColor) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: iconColor.withOpacity(0.2),
            radius: 20,
            child: Icon(
              icon,
              color: iconColor,
              size: 20,
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Text(
              instruction,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16.0,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
