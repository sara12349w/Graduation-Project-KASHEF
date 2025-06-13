

// ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';

// class Welcome extends StatelessWidget {
//     const Welcome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     print("Building Welcome Page");
//     return SafeArea(
//       child: Scaffold(
//         body: Container(
//           height: double.infinity,
//           width: double.infinity,
//           child: Stack(
//             children: [
//               SizedBox(
//                 width: double.infinity,
//                 child: Center(
//                   child: Column(
//                     // Removed Center widget to allow custom spacing
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       SizedBox(height: 20), // Add custom space from the top
//                       Image.asset("assets/images/1.png"),
                
//                       Text(
//                         "Gas leaks may be silent, but our vigilance is loud", // Your custom text
//                         style: TextStyle(
//                           fontSize: 24, // Adjust the font size
//                           fontWeight:
//                               FontWeight.bold, // Add bold styling if needed
//                           color: Color.fromARGB(255, 3, 121, 238), // Text color
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
                
//                       SizedBox(height: 30), // Add spacing after the text
                
//                       ElevatedButton(
//                         onPressed: () {
//                           print("Login button pressed");
//                           // Navigator.pushNamed(context, "/login");
//                           Navigator.of(context).pushReplacementNamed("/login");
//                         },
//                         style: ButtonStyle(
//                           backgroundColor: MaterialStateProperty.all(
//                               Color.fromARGB(255, 3, 121, 238)),
//                           padding: MaterialStateProperty.all(
//                               EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
//                           shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(27))),
//                         ),
//                         child: Text(
//                           "Log in",
//                           style: TextStyle(fontSize: 22),
//                         ),
//                       ),


                      
//                       SizedBox(height: 22),
//                       ElevatedButton(
//                         onPressed: () {
//                           Navigator.pushNamed(context, "/signup");
//                         },
//                         style: ButtonStyle(
//                           backgroundColor: MaterialStateProperty.all(
//                               const Color.fromARGB(255, 191, 222, 255)),
//                           padding: MaterialStateProperty.all(
//                               EdgeInsets.symmetric(horizontal: 68, vertical: 8)),
//                           shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(27))),
//                         ),
//                         child: Text(
//                           "Sign Up",
//                           style: TextStyle(
//                             fontSize: 22,
//                             color: const Color.fromARGB(255, 3, 119, 238),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               // Add the Positioned widget here, inside the Stack
//               Positioned(
//                 bottom: 0,
//                 left: 0, // Ensures image is flush with the left edge
//                 child: Image.asset(
//                   "assets/images/2.png",
//                   width: 390,
//                   height: 390,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ); // Scaffold
//   }
// }

// import 'package:flutter/material.dart'; 
 
// class Welcome extends StatelessWidget { 
//   const Welcome({Key? key}) : super(key: key); 
 
//   @override 
//   Widget build(BuildContext context) { 
//     //print("Building Welcome Page"); 
//     return Scaffold( 
//       body: 
//           // height: double.infinity, 
//           // width: double.infinity, 
//           SingleChildScrollView( 
//         child: Column( 
//           children: [ 
//             SizedBox( 
//               width: double.infinity, 
//               child: Center( 
//                 child: Column( 
//                   // Removed Center widget to allow custom spacing 
//                   crossAxisAlignment: CrossAxisAlignment.center, 
//                   children: [ 
//                     SizedBox(height: 20), // Add custom space from the top 
//                     Image.asset("assets/images/1.png"), 
 
//                     Text( 
//                       "Gas leaks may be silent, but our vigilance is loud", // Your custom text 
//                       style: TextStyle( 
//                         fontSize: 24, // Adjust the font size 
//                         fontWeight: 
//                             FontWeight.bold, // Add bold styling if needed 
//                         color: Color.fromARGB(255, 3, 121, 238), // Text color 
//                       ), 
//                       textAlign: TextAlign.center, 
//                     ), 
 
//                     SizedBox(height: 30), // Add spacing after the text 
 
//                     ElevatedButton( 
//                       onPressed: () { 
//                         print("Login button pressed"); 
//                         // Navigator.pushNamed(context, "/login"); 
//                         Navigator.of(context).pushReplacementNamed("/login"); 
//                       }, 
//                       style: ButtonStyle( 
//                         backgroundColor: MaterialStateProperty.all( 
//                             Color.fromARGB(255, 3, 121, 238)), 
//                         padding: MaterialStateProperty.all( 
//                             EdgeInsets.symmetric(horizontal: 79, vertical: 10)), 
//                         shape: MaterialStateProperty.all(RoundedRectangleBorder( 
//                             borderRadius: BorderRadius.circular(27))), 
//                       ), 
//                       child: Text( 
//                         "Log in", 
//                         style: TextStyle(fontSize: 22), 
//                       ), 
//                     ), 
 
//                     SizedBox(height: 22), 
//                     ElevatedButton( 
//                       onPressed: () { 
//                         //Navigator.pushNamed(context, "/signup"); 
//                       }, 
//                       style: ButtonStyle( 
//                         backgroundColor: MaterialStateProperty.all( 
//                             const Color.fromARGB(255, 191, 222, 255)), 
//                         padding: MaterialStateProperty.all( 
//                             EdgeInsets.symmetric(horizontal: 68, vertical: 8)), 
//                         shape: MaterialStateProperty.all(RoundedRectangleBorder( 
//                             borderRadius: BorderRadius.circular(27))), 
//                       ), 
//                       child: Text( 
//                         "Sign Up", 
//                         style: TextStyle( 
//                           fontSize: 22, 
//                           color: const Color.fromARGB(255, 3, 119, 238), 
//                         ), 
//                       ), 
//                     ), 
//                   ], 
//                 ), 
//               ), 
//             ), 
//             // Add the Positioned widget here, inside the Stack 
//             Positioned( 
//               bottom: 0, 
//               left: 0, // Ensures image is flush with the left edge 
//               child: Image.asset( 
//                 "assets/images/2.png", 
//                 width: 390, 
//                 height: 390, 
//               ), 
//             ), 
//           ], 
//         ), 
//       ), 
//     ); // Scaffold 
//   } 
// }

import 'package:flutter/material.dart'; 

class Welcome extends StatelessWidget { 
  const Welcome({super.key}); 

  @override 
  Widget build(BuildContext context) { 
    return SafeArea(
      child: Scaffold( 
        body: SizedBox( 
          height: double.infinity, 
          width: double.infinity, 
          child: Stack( 
            children: [ 
              Column( 
                crossAxisAlignment: CrossAxisAlignment.center, 
                children: [ 
                  SizedBox(height: 20), // Add custom space from the top 
                  Image.asset("assets/images/1.png"), 
                  Text( 
                    "Gas leaks may be silent, but our vigilance is loud", 
                    style: TextStyle( 
                      fontSize: 24, 
                      fontWeight: FontWeight.bold, 
                      color: Color.fromARGB(255, 3, 121, 238), 
                    ), 
                    textAlign: TextAlign.center, 
                  ), 
                  SizedBox(height: 30), 
                  ElevatedButton( 
                    onPressed: () { 
                      Navigator.of(context).pushReplacementNamed("/login"); 
                    }, 
                    style: ButtonStyle( 
                      backgroundColor: WidgetStateProperty.all(Color.fromARGB(255, 3, 121, 238)), 
                      padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 79, vertical: 10)), 
                      shape: WidgetStateProperty.all(RoundedRectangleBorder( 
                        borderRadius: BorderRadius.circular(27))), 
                    ), 
                    child: Text( 
                      "Log in", 
                      style: TextStyle(fontSize: 22), 
                    ), 
                  ), 
                  SizedBox(height: 22), 
                  ElevatedButton( 
                    onPressed: () { 
                      Navigator.pushNamed(context, "/signup"); 
                    }, 
                    style: ButtonStyle( 
                      backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 191, 222, 255)), 
                      padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 68, vertical: 8)), 
                      shape: WidgetStateProperty.all(RoundedRectangleBorder( 
                        borderRadius: BorderRadius.circular(27))), 
                    ), 
                    child: Text( 
                      "Sign Up", 
                      style: TextStyle( 
                        fontSize: 22, 
                        color: const Color.fromARGB(255, 3, 119, 238), 
                      ), 
                    ), 
                  ), 
                  Spacer(), // Add spacer to push the image to the bottom
                ], 
              ), 
              // Positioned image at the bottom
              Positioned( 
                bottom: 0, 
                left: 0, 
                right: 0, // Ensures image is flush with both the left and right edges
                child: Image.asset( 
                  "assets/images/2.png", 
                  width: MediaQuery.of(context).size.width, // Fit the image to the screen width
                  height: MediaQuery.of(context).size.height * 0.3, // Reduce height to 20% of screen height
                  fit: BoxFit.cover, // Cover the entire width and height 
                ), 
              ),
            ], 
          ), 
        ), 
      ), 
    ); 
  } 
}
