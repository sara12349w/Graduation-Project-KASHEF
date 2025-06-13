// // TODO Implement this library.

// import 'package:flutter/material.dart';

// class SmokeInstructionsPage extends StatelessWidget {
//   const SmokeInstructionsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text('Smoke Instructions'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () {
//             Navigator.pop(context); // Go back to the previous page
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Safety Instructions for Smoke',
//               style: TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Expanded(
//               child: ListView(
//                 children: [
//                   ListTile(
//                     leading: Icon(Icons.check, color: Colors.green),
//                     title: Text("Avoid inhaling smoke, cover your nose and mouth."),
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.check, color: Colors.green),
//                     title: Text("Evacuate the area if the smoke is dense."),
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.check, color: Colors.green),
//                     title: Text("Call emergency services if needed."),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class SmokeInstructionsPage extends StatelessWidget {
  const SmokeInstructionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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

            // Safety message with icon
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
                      'Ensure safety first when dealing with smoke leaks.',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.0),

            // Instructions list with icons and styling
            Expanded(
              child: ListView(
                children: [
                  _buildInstructionItem(
                    "Evacuate the area immediately and alert others.",
                    1,
                    Icons.exit_to_app,
                    Colors.red,
                  ),
                  _buildInstructionItem(
                    "Cover your nose and mouth to avoid inhaling smoke.",
                    2,
                    Icons.masks,
                    Colors.orange,
                  ),
                  _buildInstructionItem(
                    "Stay low to the ground to access cleaner air when moving through smoke.",
                    3,
                    Icons.arrow_downward,
                    Colors.blue,
                  ),
                  _buildInstructionItem(
                    "Do not use electrical devices or elevators.",
                    4,
                    Icons.electrical_services,
                    Colors.purple,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),

            // Civil Defense number prominently displayed
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
                  "Civil Defense Number : 998",
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

  // Instruction item widget
  Widget _buildInstructionItem(String instruction, int number, IconData icon, Color iconColor) {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Step $number",
                  style: TextStyle(
                    color: iconColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  instruction,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16.0,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
