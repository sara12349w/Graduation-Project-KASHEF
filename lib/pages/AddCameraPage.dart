// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'camerapage.dart'; // استيراد صفحة CameraPage

// // // // // // class AddCameraPage extends StatefulWidget {
// // // // // //   @override
// // // // // //   _AddCameraPageState createState() => _AddCameraPageState();
// // // // // // }

// // // // // // class _AddCameraPageState extends State<AddCameraPage> {
// // // // // //   final List<String> cameras = ["Camera A", "Camera B", "Camera C", "Camera D"];
// // // // // //   final List<String> locations = ["Area A", "Area B", "Area C", "Area D"];
// // // // // //   final Map<String, String> areaImages = {
// // // // // //     "Area A": "assets/images/3.png",
// // // // // //     "Area B": "assets/images/4.png",
// // // // // //     "Area C": "assets/images/5.png",
// // // // // //     "Area D": "assets/images/6.png",
// // // // // //   };

// // // // // //   String? selectedCamera;
// // // // // //   String? selectedLocation;

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       appBar: AppBar(
// // // // // //         title: Text("Add Camera"),
// // // // // //       ),
// // // // // //       body: Padding(
// // // // // //         padding: const EdgeInsets.all(16.0),
// // // // // //         child: Column(
// // // // // //           children: [
// // // // // //             DropdownButtonFormField<String>(
// // // // // //               value: selectedCamera,
// // // // // //               items: cameras.map((camera) {
// // // // // //                 return DropdownMenuItem(
// // // // // //                   value: camera,
// // // // // //                   child: Text(camera),
// // // // // //                 );
// // // // // //               }).toList(),
// // // // // //               onChanged: (value) {
// // // // // //                 setState(() {
// // // // // //                   selectedCamera = value;
// // // // // //                 });
// // // // // //               },
// // // // // //               decoration: InputDecoration(
// // // // // //                 labelText: "Select Camera",
// // // // // //                 border: OutlineInputBorder(),
// // // // // //               ),
// // // // // //             ),
// // // // // //             SizedBox(height: 16),
// // // // // //             DropdownButtonFormField<String>(
// // // // // //               value: selectedLocation,
// // // // // //               items: locations.map((location) {
// // // // // //                 return DropdownMenuItem(
// // // // // //                   value: location,
// // // // // //                   child: Text(location),
// // // // // //                 );
// // // // // //               }).toList(),
// // // // // //               onChanged: (value) {
// // // // // //                 setState(() {
// // // // // //                   selectedLocation = value;
// // // // // //                 });
// // // // // //               },
// // // // // //               decoration: InputDecoration(
// // // // // //                 labelText: "Select Location",
// // // // // //                 border: OutlineInputBorder(),
// // // // // //               ),
// // // // // //             ),
// // // // // //             SizedBox(height: 32),
// // // // // //             ElevatedButton(
// // // // // //               onPressed: () {
// // // // // //                 if (selectedCamera != null && selectedLocation != null) {
// // // // // //                   // استرداد صورة الموقع
// // // // // //                   String selectedImage = areaImages[selectedLocation]!;
// // // // // //                   // الانتقال إلى صفحة CameraPage
// // // // // //                   Navigator.push(
// // // // // //                     context,
// // // // // //                     MaterialPageRoute(
// // // // // //                       builder: (context) => CameraPage(
// // // // // //                         onImageCaptured: (imagePath, prediction) {
// // // // // //                           // من هنا يمكنك التعامل مع البيانات بعد العودة
// // // // // //                           print('Image: $imagePath, Prediction: $prediction');
// // // // // //                         },
// // // // // //                       ),
// // // // // //                     ),
// // // // // //                   );
// // // // // //                 } else {
// // // // // //                   ScaffoldMessenger.of(context).showSnackBar(
// // // // // //                     SnackBar(
// // // // // //                       content: Text("Please select both a camera and a location"),
// // // // // //                     ),
// // // // // //                   );
// // // // // //                 }
// // // // // //               },
// // // // // //               child: Text("Done"),
// // // // // //             ),
// // // // // //           ],
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // import 'package:flutter/material.dart';
// // // // // import 'CameraPage.dart'; // تأكد من تعديل المسار إذا لزم الأمر

// // // // // class AddCameraPage extends StatefulWidget {
// // // // //   final Function(String selectedLocation, String areaImage) onSelectionCompleted;
// // // // //   final Function(String imagePath, String predictionResult) onImageCaptured;

// // // // //   const AddCameraPage({
// // // // //     Key? key,
// // // // //     required this.onSelectionCompleted,
// // // // //     required this.onImageCaptured,
// // // // //   }) : super(key: key);

// // // // //   @override
// // // // //   _AddCameraPageState createState() => _AddCameraPageState();
// // // // // }

// // // // // class _AddCameraPageState extends State<AddCameraPage> {
// // // // //   // قوائم الكاميرات والمواقع
// // // // //   final List<String> cameras = ["Camera A", "Camera B", "Camera C", "Camera D"];
// // // // //   final List<String> locations = ["Area A", "Area B", "Area C", "Area D"];

// // // // //   // خريطة لربط المواقع بالصور
// // // // //   final Map<String, String> areaImages = {
// // // // //     "Area A": "assets/images/3.jpg",
// // // // //     "Area B": "assets/images/4.jpg",
// // // // //     "Area C": "assets/images/5.jpg",
// // // // //     "Area D": "assets/images/6.jpg",
// // // // //   };

// // // // //   String? selectedCamera; // الكاميرا المختارة
// // // // //   String? selectedLocation; // الموقع المختار

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: const Text("Add Camera"),
// // // // //       ),
// // // // //       body: Padding(
// // // // //         padding: const EdgeInsets.all(16.0),
// // // // //         child: Column(
// // // // //           children: [
// // // // //             // قائمة اختيار الكاميرا
// // // // //             DropdownButtonFormField<String>(
// // // // //               value: selectedCamera,
// // // // //               items: cameras.map((camera) {
// // // // //                 return DropdownMenuItem(
// // // // //                   value: camera,
// // // // //                   child: Text(camera),
// // // // //                 );
// // // // //               }).toList(),
// // // // //               onChanged: (value) {
// // // // //                 setState(() {
// // // // //                   selectedCamera = value;
// // // // //                 });
// // // // //               },
// // // // //               decoration: const InputDecoration(
// // // // //                 labelText: "Select Camera",
// // // // //                 border: OutlineInputBorder(),
// // // // //               ),
// // // // //             ),
// // // // //             const SizedBox(height: 16),
// // // // //             // قائمة اختيار الموقع
// // // // //             DropdownButtonFormField<String>(
// // // // //               value: selectedLocation,
// // // // //               items: locations.map((location) {
// // // // //                 return DropdownMenuItem(
// // // // //                   value: location,
// // // // //                   child: Text(location),
// // // // //                 );
// // // // //               }).toList(),
// // // // //               onChanged: (value) {
// // // // //                 setState(() {
// // // // //                   selectedLocation = value;
// // // // //                 });
// // // // //               },
// // // // //               decoration: const InputDecoration(
// // // // //                 labelText: "Select Location",
// // // // //                 border: OutlineInputBorder(),
// // // // //               ),
// // // // //             ),
// // // // //             const SizedBox(height: 32),
// // // // //             // زر "Done"
// // // // //             ElevatedButton(
// // // // //               onPressed: () {
// // // // //                 if (selectedCamera != null && selectedLocation != null) {
// // // // //                   // الحصول على صورة الموقع
// // // // //                   final areaImage = areaImages[selectedLocation]!;
// // // // //                   // استدعاء الدالة التي تمرر البيانات
// // // // //                   widget.onSelectionCompleted(selectedLocation!, areaImage);

// // // // //                   // التنقل إلى صفحة الكاميرا
// // // // //                   Navigator.push(
// // // // //                     context,
// // // // //                     MaterialPageRoute(
// // // // //                       builder: (context) => CameraPage(
// // // // //                         onImageCaptured: widget.onImageCaptured,
// // // // //                       ),
// // // // //                     ),
// // // // //                   );
// // // // //                 } else {
// // // // //                   // إظهار رسالة خطأ إذا لم يتم اختيار الكاميرا أو الموقع
// // // // //                   ScaffoldMessenger.of(context).showSnackBar(
// // // // //                     const SnackBar(
// // // // //                       content: Text("Please select both a camera and a location"),
// // // // //                     ),
// // // // //                   );
// // // // //                 }
// // // // //               },
// // // // //               child: const Text("Done"),
// // // // //             ),
// // // // //           ],
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // // }
// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // // // import 'CameraPage.dart';

// // // // // class AddCameraPage extends StatefulWidget {
// // // // //   @override
// // // // //   _AddCameraPageState createState() => _AddCameraPageState();
// // // // // }

// // // // // class _AddCameraPageState extends State<AddCameraPage> {
// // // // //   String? selectedCamera;
// // // // //   String? selectedArea;
// // // // //   final Map<String, String> areaUrls = {
// // // // //     'Area A':
// // // // //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/3.jpg?t=2024-11-22T22%3A11%3A50.753Z',
// // // // //     'Area B':
// // // // //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/4.jpg?t=2024-11-22T22%3A12%3A20.100Z',
// // // // //     'Area C':
// // // // //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/5.jpg?t=2024-11-22T22%3A12%3A30.525Z',
// // // // //     'Area D':
// // // // //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/6.jpg?t=2024-11-22T22%3A12%3A40.837Z',
// // // // //   };

// // // // //   void saveToFirestore() async {
// // // // //     if (selectedCamera != null && selectedArea != null) {
// // // // //       try {
// // // // //         await FirebaseFirestore.instance.collection('Area').add({
// // // // //           'camera': selectedCamera,
// // // // //           'area': selectedArea,
// // // // //           'url': areaUrls[selectedArea],
// // // // //         });
// // // // //         ScaffoldMessenger.of(context).showSnackBar(
// // // // //           SnackBar(content: Text('Saved successfully!')),
// // // // //         );
// // // // //         // التنقل إلى CameraPage مع تمرير onImageCaptured
// // // // //         Navigator.push(
// // // // //           context,
// // // // //           MaterialPageRoute(
// // // // //             builder: (context) => CameraPage(
// // // // //               onImageCaptured: (capturedImagePath, capturedPredictionResult) {
// // // // //                 // التعامل مع البيانات التي يتم استقبالها من الكاميرا
// // // // //                 print('Image Path: $capturedImagePath');
// // // // //                 print('Prediction Result: $capturedPredictionResult');
// // // // //               },
// // // // //             ),
// // // // //           ),
// // // // //         );
// // // // //       } catch (e) {
// // // // //         ScaffoldMessenger.of(context).showSnackBar(
// // // // //           SnackBar(content: Text('Failed to save: $e')),
// // // // //         );
// // // // //       }
// // // // //     } else {
// // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // //         SnackBar(content: Text('Please select both camera and area!')),
// // // // //       );
// // // // //     }
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text('Add Camera'),
// // // // //       ),
// // // // //       body: Padding(
// // // // //         padding: const EdgeInsets.all(16.0),
// // // // //         child: Column(
// // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // //           children: [
// // // // //             Text(
// // // // //               'Select Camera:',
// // // // //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // // // //             ),
// // // // //             DropdownButton<String>(
// // // // //               value: selectedCamera,
// // // // //               hint: Text('Choose a camera'),
// // // // //               items: ['Camera 1', 'Camera 2', 'Camera 3', 'Camera 4']
// // // // //                   .map((camera) => DropdownMenuItem(
// // // // //                         value: camera,
// // // // //                         child: Text(camera),
// // // // //                       ))
// // // // //                   .toList(),
// // // // //               onChanged: (value) {
// // // // //                 setState(() {
// // // // //                   selectedCamera = value;
// // // // //                 });
// // // // //               },
// // // // //             ),
// // // // //             SizedBox(height: 20),
// // // // //             Text(
// // // // //               'Select Area:',
// // // // //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // // // //             ),
// // // // //             DropdownButton<String>(
// // // // //               value: selectedArea,
// // // // //               hint: Text('Choose an area'),
// // // // //               items: areaUrls.keys
// // // // //                   .map((area) => DropdownMenuItem(
// // // // //                         value: area,
// // // // //                         child: Text(area),
// // // // //                       ))
// // // // //                   .toList(),
// // // // //               onChanged: (value) {
// // // // //                 setState(() {
// // // // //                   selectedArea = value;
// // // // //                 });
// // // // //               },
// // // // //             ),
// // // // //             Spacer(),
// // // // //             Center(
// // // // //               child: ElevatedButton(
// // // // //                 onPressed: saveToFirestore,
// // // // //                 child: Text('Done'),
// // // // //               ),
// // // // //             ),
// // // // //           ],
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // import 'package:flutter/material.dart';
// // // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // // import 'CameraPage.dart';

// // // // class AddCameraPage extends StatefulWidget {
// // // //   @override
// // // //   _AddCameraPageState createState() => _AddCameraPageState();
// // // // }

// // // // class _AddCameraPageState extends State<AddCameraPage> {
// // // //   String? selectedCamera;
// // // //   String? selectedArea;

// // // //   final Map<String, String> areaUrls = {
// // // //     'Area A':
// // // //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/3.jpg?t=2024-11-22T22%3A11%3A50.753Z',
// // // //     'Area B':
// // // //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/4.jpg?t=2024-11-22T22%3A12%3A20.100Z',
// // // //     'Area C':
// // // //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/5.jpg?t=2024-11-22T22%3A12%3A30.525Z',
// // // //     'Area D':
// // // //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/6.jpg?t=2024-11-22T22%3A12%3A40.837Z',
// // // //   };

// // // //   void saveToFirestore() async {
// // // //     if (selectedCamera != null && selectedArea != null) {
// // // //       try {
// // // //         await FirebaseFirestore.instance.collection('Area').add({
// // // //           'camera': selectedCamera,
// // // //           'area': selectedArea,
// // // //           'url': areaUrls[selectedArea],
// // // //           'timestamp': FieldValue.serverTimestamp(), // إضافة timestamp
// // // //         });
// // // //         ScaffoldMessenger.of(context).showSnackBar(
// // // //           SnackBar(content: Text('Saved successfully!')),
// // // //         );
// // // //         // التنقل إلى صفحة الكاميرا
// // // //         Navigator.push(
// // // //           context,
// // // //           MaterialPageRoute(
// // // //             builder: (context) => CameraPage(
// // // //               onImageCaptured: (capturedImagePath, capturedPredictionResult) {
// // // //                 // التعامل مع البيانات القادمة من صفحة الكاميرا
// // // //                 print('Image Path: $capturedImagePath');
// // // //                 print('Prediction Result: $capturedPredictionResult');
// // // //               },
// // // //             ),
// // // //           ),
// // // //         );
// // // //       } catch (e) {
// // // //         ScaffoldMessenger.of(context).showSnackBar(
// // // //           SnackBar(content: Text('Failed to save: $e')),
// // // //         );
// // // //       }
// // // //     } else {
// // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // //         SnackBar(content: Text('Please select both camera and area!')),
// // // //       );
// // // //     }
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text('Add Camera'),
// // // //       ),
// // // //       body: Padding(
// // // //         padding: const EdgeInsets.all(16.0),
// // // //         child: Column(
// // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // //           children: [
// // // //             Text(
// // // //               'Select Camera:',
// // // //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // // //             ),
// // // //             DropdownButton<String>(
// // // //               value: selectedCamera,
// // // //               hint: Text('Choose a camera'),
// // // //               items: ['Camera 1', 'Camera 2', 'Camera 3', 'Camera 4']
// // // //                   .map((camera) => DropdownMenuItem(
// // // //                         value: camera,
// // // //                         child: Text(camera),
// // // //                       ))
// // // //                   .toList(),
// // // //               onChanged: (value) {
// // // //                 setState(() {
// // // //                   selectedCamera = value;
// // // //                 });
// // // //               },
// // // //             ),
// // // //             SizedBox(height: 20),
// // // //             Text(
// // // //               'Select Area:',
// // // //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // // //             ),
// // // //             DropdownButton<String>(
// // // //               value: selectedArea,
// // // //               hint: Text('Choose an area'),
// // // //               items: areaUrls.keys
// // // //                   .map((area) => DropdownMenuItem(
// // // //                         value: area,
// // // //                         child: Text(area),
// // // //                       ))
// // // //                   .toList(),
// // // //               onChanged: (value) {
// // // //                 setState(() {
// // // //                   selectedArea = value;
// // // //                 });
// // // //               },
// // // //             ),
// // // //             Spacer(),
// // // //             Center(
// // // //               child: ElevatedButton(
// // // //                 onPressed: saveToFirestore,
// // // //                 child: Text('Done'),
// // // //               ),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // import 'package:flutter/material.dart';
// // // // import 'CameraPage.dart';

// // // // class AddCameraPage extends StatefulWidget {
// // // //   @override
// // // //   _AddCameraPageState createState() => _AddCameraPageState();
// // // // }

// // // // class _AddCameraPageState extends State<AddCameraPage> {
// // // //   String? selectedCamera;
// // // //   String? selectedArea;

// // // //   final Map<String, String> areaUrls = {
// // // //     'Area A':
// // // //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/3.jpg?t=2024-11-22T22%3A11%3A50.753Z',
// // // //     'Area B':
// // // //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/4.jpg?t=2024-11-22T22%3A12%3A20.100Z',
// // // //     'Area C':
// // // //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/5.jpg?t=2024-11-22T22%3A12%3A30.525Z',
// // // //     'Area D':
// // // //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/6.jpg?t=2024-11-22T22%3A12%3A40.837Z',
// // // //   };

// // // //   void navigateToCameraPage() {
// // // //     if (selectedCamera != null && selectedArea != null) {
// // // //       Navigator.push(
// // // //         context,
// // // //         MaterialPageRoute(
// // // //           builder: (context) => CameraPage(
// // // //             onImageCaptured: (capturedImagePath, capturedPredictionResult) {
// // // //               print('Image Path: $capturedImagePath');
// // // //               print('Prediction Result: $capturedPredictionResult');
// // // //             },
// // // //             area: selectedArea!,
// // // //             camera: selectedCamera!,
// // // //             areaUrl: areaUrls[selectedArea]!,
// // // //           ),
// // // //         ),
// // // //       );
// // // //     } else {
// // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // //         SnackBar(content: Text('Please select both camera and area!')),
// // // //       );
// // // //     }
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text('Add Camera'),
// // // //       ),
// // // //       body: Padding(
// // // //         padding: const EdgeInsets.all(16.0),
// // // //         child: Column(
// // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // //           children: [
// // // //             Text(
// // // //               'Select Camera:',
// // // //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // // //             ),
// // // //             DropdownButton<String>(
// // // //               value: selectedCamera,
// // // //               hint: Text('Choose a camera'),
// // // //               items: ['Camera 1', 'Camera 2', 'Camera 3', 'Camera 4']
// // // //                   .map((camera) => DropdownMenuItem(
// // // //                         value: camera,
// // // //                         child: Text(camera),
// // // //                       ))
// // // //                   .toList(),
// // // //               onChanged: (value) {
// // // //                 setState(() {
// // // //                   selectedCamera = value;
// // // //                 });
// // // //               },
// // // //             ),
// // // //             SizedBox(height: 20),
// // // //             Text(
// // // //               'Select Area:',
// // // //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // // //             ),
// // // //             DropdownButton<String>(
// // // //               value: selectedArea,
// // // //               hint: Text('Choose an area'),
// // // //               items: areaUrls.keys
// // // //                   .map((area) => DropdownMenuItem(
// // // //                         value: area,
// // // //                         child: Text(area),
// // // //                       ))
// // // //                   .toList(),
// // // //               onChanged: (value) {
// // // //                 setState(() {
// // // //                   selectedArea = value;
// // // //                 });
// // // //               },
// // // //             ),
// // // //             Spacer(),
// // // //             Center(
// // // //               child: ElevatedButton(
// // // //                 onPressed: navigateToCameraPage,
// // // //                 child: Text('Done'),
// // // //               ),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // // }
// // // // import 'package:flutter/material.dart';
// // // // import 'CameraPage.dart';

// // // // class AddCameraPage extends StatefulWidget {
// // // //   @override
// // // //   _AddCameraPageState createState() => _AddCameraPageState();
// // // // }

// // // // class _AddCameraPageState extends State<AddCameraPage> {
// // // //   String? selectedCamera;
// // // //   String? selectedArea;

// // // //   final Map<String, String> areaUrls = {
// // // //     'Area A':
// // // //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/3.jpg?t=2024-11-22T22%3A11%3A50.753Z',
// // // //     'Area B':
// // // //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/4.jpg?t=2024-11-22T22%3A12%3A20.100Z',
// // // //     'Area C':
// // // //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/5.jpg?t=2024-11-22T22%3A12%3A30.525Z',
// // // //     'Area D':
// // // //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/6.jpg?t=2024-11-22T22%3A12%3A40.837Z',
// // // //   };

// // // //   void navigateToCameraPage() {
// // // //     if (selectedCamera != null && selectedArea != null) {
// // // //       Navigator.push(
// // // //         context,
// // // //         MaterialPageRoute(
// // // //           builder: (context) => CameraPage(
// // // //             area: selectedArea!,
// // // //             camera: selectedCamera!,
// // // //             areaUrl: areaUrls[selectedArea]!,
// // // //           ),
// // // //         ),
// // // //       );
// // // //     } else {
// // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // //         const SnackBar(
// // // //           content: Text('Please select both camera and area!'),
// // // //           backgroundColor: Colors.red,
// // // //         ),
// // // //       );
// // // //     }
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: const Text('Add Camera'),
// // // //       ),
// // // //       body: Padding(
// // // //         padding: const EdgeInsets.all(16.0),
// // // //         child: Column(
// // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // //           children: [
// // // //             const Text(
// // // //               'Select Camera:',
// // // //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // // //             ),
// // // //             DropdownButton<String>(
// // // //               value: selectedCamera,
// // // //               hint: const Text('Choose a camera'),
// // // //               items: ['Camera 1', 'Camera 2', 'Camera 3', 'Camera 4']
// // // //                   .map((camera) => DropdownMenuItem(
// // // //                         value: camera,
// // // //                         child: Text(camera),
// // // //                       ))
// // // //                   .toList(),
// // // //               onChanged: (value) {
// // // //                 setState(() {
// // // //                   selectedCamera = value;
// // // //                 });
// // // //               },
// // // //             ),
// // // //             const SizedBox(height: 20),
// // // //             const Text(
// // // //               'Select Area:',
// // // //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // // //             ),
// // // //             DropdownButton<String>(
// // // //               value: selectedArea,
// // // //               hint: const Text('Choose an area'),
// // // //               items: areaUrls.keys
// // // //                   .map((area) => DropdownMenuItem(
// // // //                         value: area,
// // // //                         child: Text(area),
// // // //                       ))
// // // //                   .toList(),
// // // //               onChanged: (value) {
// // // //                 setState(() {
// // // //                   selectedArea = value;
// // // //                 });
// // // //               },
// // // //             ),
// // // //             const Spacer(),
// // // //             Center(
// // // //               child: ElevatedButton(
// // // //                 onPressed: navigateToCameraPage,
// // // //                 child: const Text('Done'),
// // // //                 style: ElevatedButton.styleFrom(
// // // //                   padding: const EdgeInsets.symmetric(
// // // //                     horizontal: 30,
// // // //                     vertical: 15,
// // // //                   ),
// // // //                   backgroundColor: Colors.blue,
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // import 'package:flutter/material.dart';
// // // import 'CameraPage.dart';

// // // class AddCameraPage extends StatefulWidget {
// // //   final Function(String imagePath, String predictionResult) onImageCaptured;

// // //   AddCameraPage({required this.onImageCaptured});

// // //   @override
// // //   _AddCameraPageState createState() => _AddCameraPageState();
// // // }

// // // class _AddCameraPageState extends State<AddCameraPage> {
// // //   String? selectedCamera;
// // //   String? selectedArea;

// // //   final Map<String, String> areaUrls = {
// // //     'Area A': 'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/3.jpg?t=2024-11-22T22%3A11%3A50.753Z',
// // //     'Area B': 'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/4.jpg?t=2024-11-22T22%3A12%3A20.100Z',
// // //     'Area C': 'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/5.jpg?t=2024-11-22T22%3A12%3A30.525Z',
// // //     'Area D': 'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/6.jpg?t=2024-11-22T22%3A12%3A40.837Z',
// // //   };

// // //   void navigateToCameraPage() {
// // //     if (selectedCamera != null && selectedArea != null) {
// // //       Navigator.push(
// // //         context,
// // //         MaterialPageRoute(
// // //           builder: (context) => CameraPage(
// // //             area: selectedArea!,
// // //             camera: selectedCamera!,
// // //             areaUrl: areaUrls[selectedArea]!,
// // //             onImageCaptured: widget.onImageCaptured, // تمرير الدالة
// // //           ),
// // //         ),
// // //       );
// // //     } else {
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         const SnackBar(
// // //           content: Text('Please select both camera and area!'),
// // //           backgroundColor: Colors.red,
// // //         ),
// // //       );
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text('Add Camera'),
// // //       ),
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             const Text(
// // //               'Select Camera:',
// // //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // //             ),
// // //             DropdownButton<String>(
// // //               value: selectedCamera,
// // //               hint: const Text('Choose a camera'),
// // //               items: ['Camera 1', 'Camera 2', 'Camera 3', 'Camera 4']
// // //                   .map((camera) => DropdownMenuItem(
// // //                         value: camera,
// // //                         child: Text(camera),
// // //                       ))
// // //                   .toList(),
// // //               onChanged: (value) {
// // //                 setState(() {
// // //                   selectedCamera = value;
// // //                 });
// // //               },
// // //             ),
// // //             const SizedBox(height: 20),
// // //             const Text(
// // //               'Select Area:',
// // //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // //             ),
// // //             DropdownButton<String>(
// // //               value: selectedArea,
// // //               hint: const Text('Choose an area'),
// // //               items: areaUrls.keys
// // //                   .map((area) => DropdownMenuItem(
// // //                         value: area,
// // //                         child: Text(area),
// // //                       ))
// // //                   .toList(),
// // //               onChanged: (value) {
// // //                 setState(() {
// // //                   selectedArea = value;
// // //                 });
// // //               },
// // //             ),
// // //             const Spacer(),
// // //             Center(
// // //               child: ElevatedButton(
// // //                 onPressed: navigateToCameraPage,
// // //                 child: const Text('Done'),
// // //                 style: ElevatedButton.styleFrom(
// // //                   padding: const EdgeInsets.symmetric(
// // //                     horizontal: 30,
// // //                     vertical: 15,
// // //                   ),
// // //                   backgroundColor: Colors.blue,
// // //                 ),
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'CameraPage.dart';

// // class AddCameraPage extends StatefulWidget {
// //   final Function(String imagePath, String predictionResult) onImageCaptured;

// //   AddCameraPage({required this.onImageCaptured});

// //   @override
// //   _AddCameraPageState createState() => _AddCameraPageState();
// // }

// // class _AddCameraPageState extends State<AddCameraPage> {
// //   String? selectedCamera;
// //   String? selectedArea;

// //   final Map<String, String> areaUrls = {
// //     'Area A': 'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/3.jpg?t=2024-11-22T22%3A11%3A50.753Z',
// //     'Area B': 'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/4.jpg?t=2024-11-22T22%3A12%3A20.100Z',
// //     'Area C': 'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/5.jpg?t=2024-11-22T22%3A12%3A30.525Z',
// //     'Area D': 'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/6.jpg?t=2024-11-22T22%3A12%3A40.837Z',
// //   };

// //   void navigateToCameraPage() {
// //     if (selectedCamera != null && selectedArea != null) {
// //       Navigator.push(
// //         context,
// //         MaterialPageRoute(
// //           builder: (context) => CameraPage(
// //             area: selectedArea!,
// //             camera: selectedCamera!,
// //             areaUrl: areaUrls[selectedArea]!,
// //             onImageCaptured: widget.onImageCaptured,
// //           ),
// //         ),
// //       );
// //     } else {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         const SnackBar(
// //           content: Text('Please select both camera and area!'),
// //           backgroundColor: Colors.red,
// //         ),
// //       );
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Select Camera and Area '),
// //         backgroundColor: Colors.blue,
// //       ),
// //       body: SingleChildScrollView(
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               _buildDropdownCard(
// //                 title: 'Select Camera:',
// //                 value: selectedCamera,
// //                 items: ['Camera 1', 'Camera 2', 'Camera 3', 'Camera 4'],
// //                 onChanged: (value) {
// //                   setState(() {
// //                     selectedCamera = value;
// //                   });
// //                 },
// //               ),
// //               const SizedBox(height: 20),
// //               _buildDropdownCard(
// //                 title: 'Select Area:',
// //                 value: selectedArea,
// //                 items: areaUrls.keys.toList(),
// //                 onChanged: (value) {
// //                   setState(() {
// //                     selectedArea = value;
// //                   });
// //                 },
// //               ),
// //               const SizedBox(height: 40),
// //               Center(
// //                 child: ElevatedButton(
// //                   onPressed: navigateToCameraPage,
// //                   child: const Text(
// //                     'Confirm',
// //                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //                   ),
// //                   style: ElevatedButton.styleFrom(
// //                     padding: const EdgeInsets.symmetric(
// //                       horizontal: 50,
// //                       vertical: 15,
// //                     ),
// //                     backgroundColor: Colors.blue,
// //                     shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(25),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildDropdownCard({
// //     required String title,
// //     required String? value,
// //     required List<String> items,
// //     required ValueChanged<String?> onChanged,
// //   }) {
// //     return Card(
// //       elevation: 4,
// //       color: Colors.blue[50], // لون أزرق خفيف لتناسب المشروع
// //       shape: RoundedRectangleBorder(
// //         borderRadius: BorderRadius.circular(15),
// //       ),
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Text(
// //               title,
// //               style: const TextStyle(
// //                 fontSize: 18,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.blue,
// //               ),
// //             ),
// //             const SizedBox(height: 10),
// //             DropdownButton<String>(
// //               value: value,
// //               isExpanded: true,
// //               hint: const Text('Select an option'),
// //               items: items
// //                   .map((item) => DropdownMenuItem(
// //                         value: item,
// //                         child: Text(item),
// //                       ))
// //                   .toList(),
// //               onChanged: onChanged,
// //               icon: const Icon(Icons.arrow_drop_down, color: Colors.blue),
// //               underline: Container(
// //                 height: 2,
// //                 color: Colors.blue,
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:supabase_flutter/supabase_flutter.dart';
// // import 'CameraPage.dart';

// // class AddCameraPage extends StatefulWidget {
// //   final Function(String imagePath, String predictionResult) onImageCaptured;

// //   AddCameraPage({required this.onImageCaptured});

// //   @override
// //   _AddCameraPageState createState() => _AddCameraPageState();
// // }

// // class _AddCameraPageState extends State<AddCameraPage> {
// //   String? selectedCamera;
// //   String? selectedArea;

// //   final Map<String, String> areaUrls = {
// //     'Area A': 'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/3.jpg?t=2024-11-22T22%3A11%3A50.753Z',
// //     'Area B': 'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/4.jpg?t=2024-11-22T22%3A12%3A20.100Z',
// //     'Area C': 'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/5.jpg?t=2024-11-22T22%3A12%3A30.525Z',
// //     'Area D': 'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/6.jpg?t=2024-11-22T22%3A12%3A40.837Z',
// //   };

// //   Future<void> navigateToCameraPage() async {
// //     if (selectedCamera != null && selectedArea != null) {
// //       final supabase = Supabase.instance.client;

// //       try {
// //         if (selectedCamera == 'Camera 2') {
// //           // إذا تم اختيار الكاميرا 2، اجعلها نشطة
// //           final response = await supabase
// //               .from('camera_status')
// //               .update({'status': 'active'})
// //               .eq('camera_id', 2)
// //               .select();

// //           if (response.isEmpty) {
// //             if (mounted) {
// //               ScaffoldMessenger.of(context).showSnackBar(
// //                 const SnackBar(
// //                   content: Text('Failed to activate Camera 2.'),
// //                   backgroundColor: Colors.red,
// //                 ),
// //               );
// //             }
// //             return;
// //           }

// //           if (mounted) {
// //             ScaffoldMessenger.of(context).showSnackBar(
// //               const SnackBar(
// //                 content: Text('Camera 2 is now active!'),
// //                 backgroundColor: Colors.green,
// //               ),
// //             );
// //           }
// //         } else {
// //           // إذا لم يتم اختيار الكاميرا 2، اجعلها غير نشطة
// //           final responseInactive = await supabase
// //               .from('camera_status')
// //               .update({'status': 'inactive'})
// //               .eq('camera_id', 2)
// //               .select();

// //           if (responseInactive.isEmpty) {
// //             if (mounted) {
// //               ScaffoldMessenger.of(context).showSnackBar(
// //                 const SnackBar(
// //                   content: Text('Failed to deactivate Camera 2.'),
// //                   backgroundColor: Colors.red,
// //                 ),
// //               );
// //             }
// //             return;
// //           }
// //         }

// //         // الانتقال إلى صفحة الكاميرا عند اختيار أي كاميرا
// //         Navigator.push(
// //           context,
// //           MaterialPageRoute(
// //             builder: (context) => CameraPage(
// //               area: selectedArea!,
// //               camera: selectedCamera!,
// //               areaUrl: areaUrls[selectedArea]!,
// //               onImageCaptured: widget.onImageCaptured,
// //             ),
// //           ),
// //         );
// //       } catch (e) {
// //         if (mounted) {
// //           ScaffoldMessenger.of(context).showSnackBar(
// //             SnackBar(
// //               content: Text('An error occurred: $e'),
// //               backgroundColor: Colors.red,
// //             ),
// //           );
// //         }
// //       }
// //     } else {
// //       if (mounted) {
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           const SnackBar(
// //             content: Text('Please select both camera and area!'),
// //             backgroundColor: Colors.red,
// //           ),
// //         );
// //       }
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Select Camera and Area '),
// //         backgroundColor: Colors.blue,
// //       ),
// //       body: SingleChildScrollView(
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               _buildDropdownCard(
// //                 title: 'Select Camera:',
// //                 value: selectedCamera,
// //                 items: ['Camera 1', 'Camera 2', 'Camera 3', 'Camera 4'],
// //                 onChanged: (value) {
// //                   setState(() {
// //                     selectedCamera = value;
// //                   });
// //                 },
// //               ),
// //               const SizedBox(height: 20),
// //               _buildDropdownCard(
// //                 title: 'Select Area:',
// //                 value: selectedArea,
// //                 items: areaUrls.keys.toList(),
// //                 onChanged: (value) {
// //                   setState(() {
// //                     selectedArea = value;
// //                   });
// //                 },
// //               ),
// //               const SizedBox(height: 40),
// //               Center(
// //                 child: ElevatedButton(
// //                   onPressed: navigateToCameraPage,
// //                   child: const Text(
// //                     'Confirm',
// //                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //                   ),
// //                   style: ElevatedButton.styleFrom(
// //                     padding: const EdgeInsets.symmetric(
// //                       horizontal: 50,
// //                       vertical: 15,
// //                     ),
// //                     backgroundColor: Colors.blue,
// //                     shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(25),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildDropdownCard({
// //     required String title,
// //     required String? value,
// //     required List<String> items,
// //     required ValueChanged<String?> onChanged,
// //   }) {
// //     return Card(
// //       elevation: 4,
// //       color: Colors.blue[50],
// //       shape: RoundedRectangleBorder(
// //         borderRadius: BorderRadius.circular(15),
// //       ),
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Text(
// //               title,
// //               style: const TextStyle(
// //                 fontSize: 18,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.blue,
// //               ),
// //             ),
// //             const SizedBox(height: 10),
// //             DropdownButton<String>(
// //               value: value,
// //               isExpanded: true,
// //               hint: const Text('Select an option'),
// //               items: items
// //                   .map((item) => DropdownMenuItem(
// //                         value: item,
// //                         child: Text(item),
// //                       ))
// //                   .toList(),
// //               onChanged: onChanged,
// //               icon: const Icon(Icons.arrow_drop_down, color: Colors.blue),
// //               underline: Container(
// //                 height: 2,
// //                 color: Colors.blue,
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:supabase_flutter/supabase_flutter.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';
// // import 'alerts.dart'; // صفحة عرض التوقع والصورة
// // import 'camerapage.dart'; // صفحة الكاميرات الأخرى

// // class AddCameraPage extends StatefulWidget {
// //   final Function(String imagePath, String predictionResult) onImageCaptured;

// //   AddCameraPage({required this.onImageCaptured});

// //   @override
// //   _AddCameraPageState createState() => _AddCameraPageState();
// // }

// // class _AddCameraPageState extends State<AddCameraPage> {
// //   String? selectedCamera;
// //   String? selectedArea;

// //   final Map<String, String> areaUrls = {
// //     'Area A':
// //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/3.jpg?t=2024-11-22T22%3A11%3A50.753Z',
// //     'Area B':
// //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/4.jpg?t=2024-11-22T22%3A12%3A20.100Z',
// //     'Area C':
// //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/5.jpg?t=2024-11-22T22%3A12%3A30.525Z',
// //     'Area D':
// //         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/6.jpg?t=2024-11-22T22%3A12%3A40.837Z',
// //   };

// //   // تفعيل الكاميرا 2
// //   Future<void> activateCamera2() async {
// //     final supabase = Supabase.instance.client;

// //     try {
// //       final response = await supabase
// //           .from('camera_status') // اسم الجدول
// //           .update({'status': 'active'}) // تحديث الحالة إلى Active
// //           .eq('camera_id', 2) // شرط الكاميرا 2
// //           .select();

// //       if (response.isNotEmpty) {
// //         print('Camera 2 is now active');

// //               print('Response Data: $response');
// //       } else {
// //         print('Failed to activate Camera 2');
// //       }
// //     } catch (e) {
// //       print('Error activating Camera 2: $e');
// //     }

// //   }

// //   // إيقاف الكاميرا 2
// //   Future<void> deactivateCamera2() async {
// //     final supabase = Supabase.instance.client;

// //     try {
// //       final response = await supabase
// //           .from('camera_status') // اسم الجدول
// //           .update({'status': 'inactive'}) // تحديث الحالة إلى Inactive
// //           .eq('camera_id', 2) // شرط الكاميرا 2
// //           .select();

// //       if (response.isNotEmpty) {
// //         print('Camera 2 is now inactive');
// //       } else {
// //         print('Failed to deactivate Camera 2');
// //       }
// //     } catch (e) {
// //       print('Error deactivating Camera 2: $e');
// //     }
// //   }

// //   // جلب آخر صورة كـ URL من Supabase
// //   Future<String?> getLastImageUrl() async {
// //     try {
// //       final supabase = Supabase.instance.client;
// //       final files = await supabase.storage.from('uploads').list();

// //       if (files.isNotEmpty) {
// //         final latestFile = files.last;
// //         return supabase.storage.from('uploads').getPublicUrl(latestFile.name);
// //       }
// //       return null;
// //     } catch (e) {
// //       print("Error fetching latest image: $e");
// //       return null;
// //     }
// //   }

// //   // جلب آخر توقع من Flask
// //   Future<String?> getLastPrediction() async {
// //     try {
// //       final url = Uri.parse('http://172.20.10.2:5000/latest-prediction');
// //       final response = await http.get(url);

// //       if (response.statusCode == 200) {
// //         final data = json.decode(response.body);
// //         return data['latest_prediction'];

// //         print("heelloooo");
// //       }
// //       return null;
// //     } catch (e) {
// //       print("Error fetching latest prediction: $e");
// //       return null;
// //     }
// //   }

// //   // الانتقال إلى الكاميرا أو صفحة Alert
// //   Future<void> navigateToCameraPage() async {
// //     if (selectedCamera != null && selectedArea != null) {
// //       if (selectedCamera == 'Camera 2') {
// //         await activateCamera2();

// //         // عرض رسالة نجاح
// //         if (mounted) {
// //           ScaffoldMessenger.of(context).showSnackBar(
// //             const SnackBar(
// //               content: Text('Camera 2 is now active!'),
// //               backgroundColor: Colors.green,
// //             ),
// //           );
// //         }

// //         // جلب الصورة والتوقع
// //         final imageUrl = await getLastImageUrl();
// //         final prediction = await getLastPrediction();

// //         if (imageUrl != null && prediction != null) {
// //           Navigator.push(
// //             context,
// //             MaterialPageRoute(
// //               builder: (context) => Alerts(
// //                 imageUrl: imageUrl,
// //                 predictionResult: prediction,
// //               ),
// //             ),
// //           );
// //         } else {
// //           ScaffoldMessenger.of(context).showSnackBar(
// //             const SnackBar(
// //               content: Text('Failed to fetch image or prediction.'),
// //               backgroundColor: Colors.red,
// //             ),
// //           );
// //         }
// //       } else {
// //         // إذا تم اختيار كاميرا غير كاميرا 2، اجعل كاميرا 2 غير نشطة
// //         await deactivateCamera2();

// //         Navigator.push(
// //           context,
// //           MaterialPageRoute(
// //             builder: (context) => CameraPage(
// //               area: selectedArea!,
// //               camera: selectedCamera!,
// //               areaUrl: areaUrls[selectedArea]!,
// //               onImageCaptured: widget.onImageCaptured,
// //             ),
// //           ),
// //         );
// //       }
// //     } else {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         const SnackBar(
// //           content: Text('Please select both camera and area!'),
// //           backgroundColor: Colors.red,
// //         ),
// //       );
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Select Camera and Area'),
// //         backgroundColor: Colors.blue,
// //       ),
// //       body: SingleChildScrollView(
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               _buildDropdownCard(
// //                 title: 'Select Camera:',
// //                 value: selectedCamera,
// //                 items: ['Camera 1', 'Camera 2', 'Camera 3', 'Camera 4'],
// //                 onChanged: (value) {
// //                   setState(() {
// //                     selectedCamera = value;
// //                   });
// //                 },
// //               ),
// //               const SizedBox(height: 20),
// //               _buildDropdownCard(
// //                 title: 'Select Area:',
// //                 value: selectedArea,
// //                 items: areaUrls.keys.toList(),
// //                 onChanged: (value) {
// //                   setState(() {
// //                     selectedArea = value;
// //                   });
// //                 },
// //               ),
// //               const SizedBox(height: 40),
// //               Center(
// //                 child: ElevatedButton(
// //                   onPressed: navigateToCameraPage,
// //                   child: const Text(
// //                     'Confirm',
// //                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //                   ),
// //                   style: ElevatedButton.styleFrom(
// //                     padding: const EdgeInsets.symmetric(
// //                       horizontal: 50,
// //                       vertical: 15,
// //                     ),
// //                     backgroundColor: Colors.blue,
// //                     shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(25),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildDropdownCard({
// //     required String title,
// //     required String? value,
// //     required List<String> items,
// //     required ValueChanged<String?> onChanged,
// //   }) {
// //     return Card(
// //       elevation: 4,
// //       color: Colors.blue[50],
// //       shape: RoundedRectangleBorder(
// //         borderRadius: BorderRadius.circular(15),
// //       ),
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Text(
// //               title,
// //               style: const TextStyle(
// //                 fontSize: 18,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.blue,
// //               ),
// //             ),
// //             const SizedBox(height: 10),
// //             DropdownButton<String>(
// //               value: value,
// //               isExpanded: true,
// //               hint: const Text('Select an option'),
// //               items: items
// //                   .map((item) => DropdownMenuItem(
// //                         value: item,
// //                         child: Text(item),
// //                       ))
// //                   .toList(),
// //               onChanged: onChanged,
// //               icon: const Icon(Icons.arrow_drop_down, color: Colors.blue),
// //               underline: Container(
// //                 height: 2,
// //                 color: Colors.blue,
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'alerts.dart'; // صفحة عرض التوقع والصورة
// import 'camerapage.dart'; // صفحة الكاميرات الأخرى

// class AddCameraPage extends StatefulWidget {
//   final Function(String imagePath, String predictionResult) onImageCaptured;

//   const AddCameraPage({super.key, required this.onImageCaptured});

//   @override
//   _AddCameraPageState createState() => _AddCameraPageState();
// }

// class _AddCameraPageState extends State<AddCameraPage> {
//   String? selectedCamera;
//   String? selectedArea;

//   final Map<String, String> areaUrls = {
//     'Area A':
//         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/3.jpg',
//     'Area B':
//         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/4.jpg',
//     'Area C':
//         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/5.jpg',
//     'Area D':
//         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/6.jpg',
//   };

//   // تفعيل الكاميرا 2
//   Future<void> activateCamera2() async {
//     final supabase = Supabase.instance.client;

//     try {
//       final response = await supabase
//           .from('camera_status')
//           .update({'status': 'active'})
//           .eq('camera_id', 2)
//           .select();

//       if (response.isNotEmpty) {
//         print('Camera 2 is now active');
//         print('Response Data: $response');
//       } else {
//         print('Failed to activate Camera 2');
//       }
//     } catch (e) {
//       print('Error activating Camera 2: $e');
//     }
//   }

//   // إيقاف الكاميرا 2
//   Future<void> deactivateCamera2() async {
//     final supabase = Supabase.instance.client;

//     try {
//       final response = await supabase
//           .from('camera_status')
//           .update({'status': 'inactive'})
//           .eq('camera_id', 2)
//           .select();

//       if (response.isNotEmpty) {
//         print('Camera 2 is now inactive');
//         print('Response Data: $response');
//       } else {
//         print('Failed to deactivate Camera 2');
//       }
//     } catch (e) {
//       print('Error deactivating Camera 2: $e');
//     }
//   }

//   // جلب آخر صورة كـ URL من Supabase
//   Future<String?> getLastImageUrl() async {
//     try {
//       final supabase = Supabase.instance.client;
//       final test = supabase.storage.from("user_images");
//       print(test);
//       final files = await supabase.storage.from('user_images').list();
//       print(files);

//       if (files.isNotEmpty) {
//         final latestFile = files.last;
//         print(latestFile);
//         final imageUrl =
//             supabase.storage.from('user_images').getPublicUrl(latestFile.name);
//         print('Image URL: $imageUrl');
//         return imageUrl;
//       }
//       return null;
//     } catch (e) {
//       print("Error fetching latest image: $e");
//       return null;
//     }
//   }

//   // جلب آخر توقع من Flask
//   Future<dynamic> getLastPrediction() async {
//     try {
//       //!
//       final url = Uri.parse('http://172.20.10.2:5000/latest-prediction');
//       final response = await http.get(url);
//       print("response $response and ${response.statusCode}");
//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         print('Prediction Data: $data');
//         return data["prediction"];
//       } else {
//         print('Flask Error: Status Code ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error fetching prediction: $e');
//       return null;
//     }
//   }

//   // الانتقال إلى الكاميرا أو صفحة Alert
//   Future<void> navigateToCameraPage() async {
//     if (selectedCamera != null && selectedArea != null) {
//       if (selectedCamera == 'Camera 2') {
//         await activateCamera2();

//         // عرض رسالة نجاح
//         if (mounted) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(
//               content: Text('Camera 2 is now active!'),
//               backgroundColor: Colors.green,
//             ),
//           );
//         }

//         // جلب الصورة والتوقع
//         final imageUrl = await getLastImageUrl();
//         final prediction = await getLastPrediction();

//         print('Image URL: $imageUrl'); // طباعة رابط الصورة
//         print('Prediction: $prediction'); // طباعة التوقع

//         if (imageUrl != null && prediction != null) {
//           //area
// // "Area C"
// // (string)
// // camera
// // "Camera 1"
// // (string)

//           await FirebaseFirestore.instance.collection("History").add({
//             "area": selectedArea,
//             "camera": selectedCamera,
//             "imageUrl": imageUrl,
//             "normalImageUrl": "",
//             "predictionResult": prediction,
//             "status": "In Progress",
//          'timestamp': Timestamp.now(),
//           });
//           print("success");
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => Alerts(
//                 imageUrl: imageUrl,
//                 predictionResult: prediction,
//               ),
//             ),
//           );
//         } else {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(
//               content: Text('Failed to fetch image or prediction.'),
//               backgroundColor: Colors.red,
//             ),
//           );
//         }
//       } else {
//         // إذا تم اختيار كاميرا غير كاميرا 2، اجعل كاميرا 2 غير نشطة
//         await deactivateCamera2();

//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => CameraPage(
//               area: selectedArea!,
//               camera: selectedCamera!,
//               areaUrl: areaUrls[selectedArea]!,
//               onImageCaptured: widget.onImageCaptured,
//             ),
//           ),
//         );
//       }
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('Please select both camera and area!'),
//           backgroundColor: Colors.red,
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Select Camera and Area'),
//         backgroundColor: Colors.blue,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildDropdownCard(
//                 title: 'Select Camera:',
//                 value: selectedCamera,
//                 items: ['Camera 1', 'Camera 2', 'Camera 3', 'Camera 4'],
//                 onChanged: (value) {
//                   setState(() {
//                     selectedCamera = value;
//                   });
//                 },
//               ),
//               const SizedBox(height: 20),
//               _buildDropdownCard(
//                 title: 'Select Area:',
//                 value: selectedArea,
//                 items: areaUrls.keys.toList(),
//                 onChanged: (value) {
//                   setState(() {
//                     selectedArea = value;
//                   });
//                 },
//               ),
//               const SizedBox(height: 40),
//               Center(
//                 child: ElevatedButton(
//                   onPressed: navigateToCameraPage,
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 50,
//                       vertical: 15,
//                     ),
//                     backgroundColor: Colors.blue,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(25),
//                     ),
//                   ),
//                   child: const Text(
//                     'Confirm',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildDropdownCard({
//     required String title,
//     required String? value,
//     required List<String> items,
//     required ValueChanged<String?> onChanged,
//   }) {
//     return Card(
//       elevation: 4,
//       color: Colors.blue[50],
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: const TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.blue,
//               ),
//             ),
//             const SizedBox(height: 10),
//             DropdownButton<String>(
//               value: value,
//               isExpanded: true,
//               hint: const Text('Select an option'),
//               items: items
//                   .map((item) => DropdownMenuItem(
//                         value: item,
//                         child: Text(item),
//                       ))
//                   .toList(),
//               onChanged: onChanged,
//               icon: const Icon(Icons.arrow_drop_down, color: Colors.blue),
//               underline: Container(
//                 height: 2,
//                 color: Colors.blue,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'alerts.dart'; // صفحة عرض التوقع والصورة
// import 'camerapage.dart'; // صفحة الكاميرات الأخرى
// import 'ESP32CameraPage.dart'; // صفحة ESP32CameraPage

// class AddCameraPage extends StatefulWidget {
//   final Function(String imagePath, String predictionResult) onImageCaptured;

//   const AddCameraPage({super.key, required this.onImageCaptured});

//   @override
//   _AddCameraPageState createState() => _AddCameraPageState();
// }

// class _AddCameraPageState extends State<AddCameraPage> {
//   String? selectedCamera;
//   String? selectedArea;

//   final Map<String, String> areaUrls = {
//     'Area A':
//         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/3.jpg',
//     'Area B':
//         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/4.jpg',
//     'Area C':
//         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/5.jpg',
//     'Area D':
//         'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/6.jpg',
//   };

//   // تفعيل الكاميرا 2
//   Future<void> activateCamera2() async {
//     final supabase = Supabase.instance.client;

//     try {
//       final response = await supabase
//           .from('camera_status')
//           .update({'status': 'active'})
//           .eq('camera_id', 2)
//           .select();

//       if (response.isNotEmpty) {
//         print('Camera 2 is now active');
//         print('Response Data: $response');
//       } else {
//         print('Failed to activate Camera 2');
//       }
//     } catch (e) {
//       print('Error activating Camera 2: $e');
//     }
//   }

//   // إيقاف الكاميرا 2
//   Future<void> deactivateCamera2() async {
//     final supabase = Supabase.instance.client;

//     try {
//       final response = await supabase
//           .from('camera_status')
//           .update({'status': 'inactive'})
//           .eq('camera_id', 2)
//           .select();

//       if (response.isNotEmpty) {
//         print('Camera 2 is now inactive');
//         print('Response Data: $response');
//       } else {
//         print('Failed to deactivate Camera 2');
//       }
//     } catch (e) {
//       print('Error deactivating Camera 2: $e');
//     }
//   }

//   Future<void> navigateToCameraPage() async {
//     if (selectedCamera != null && selectedArea != null) {
//       if (selectedCamera == 'Camera 2') {
//         await activateCamera2();

//         // عرض رسالة نجاح
//         if (mounted) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(
//               content: Text('Camera 2 is now active!'),
//               backgroundColor: Colors.green,
//             ),
//           );
//         }

//         // الانتقال إلى ESP32CameraPage
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ESP32CameraPage(
//               area: selectedArea!,
//               camera: selectedCamera!,
//               areaUrl: areaUrls[selectedArea]!,
//               onImageCaptured: widget.onImageCaptured,
//             ),
//           ),
//         );
//       } else {
//         // إذا تم اختيار كاميرا أخرى، اجعل كاميرا 2 غير نشطة
//         await deactivateCamera2();

//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => CameraPage(
//               area: selectedArea!,
//               camera: selectedCamera!,
//               areaUrl: areaUrls[selectedArea]!,
//               onImageCaptured: widget.onImageCaptured,
//             ),
//           ),
//         );
//       }
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('Please select both camera and area!'),
//           backgroundColor: Colors.red,
//         ),
//       );
//     }
//   }

//  // باقي الكود يبقى كما هو...

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Select Camera and Area'),
//         backgroundColor: Colors.blue,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildDropdownCard(
//                 title: 'Select Camera:',
//                 value: selectedCamera,
//                 items: ['Camera 1', 'Camera 2', 'Camera 3', 'Camera 4'],
//                 onChanged: (value) {
//                   setState(() {
//                     selectedCamera = value;
//                   });
//                 },
//               ),
//               const SizedBox(height: 20),
//               _buildDropdownCard(
//                 title: 'Select Area:',
//                 value: selectedArea,
//                 items: areaUrls.keys.toList(),
//                 onChanged: (value) {
//                   setState(() {
//                     selectedArea = value;
//                   });
//                 },
//               ),
//               const SizedBox(height: 40),
//               Center(
//                 child: ElevatedButton(
//                   onPressed: navigateToCameraPage,
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 50,
//                       vertical: 15,
//                     ),
//                     backgroundColor: Colors.blue,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(25),
//                     ),
//                   ),
//                   child: const Text(
//                     'Confirm',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildDropdownCard({
//     required String title,
//     required String? value,
//     required List<String> items,
//     required ValueChanged<String?> onChanged,
//   }) {
//     return Card(
//       elevation: 4,
//       color: Colors.blue[50],
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: const TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.blue,
//               ),
//             ),
//             const SizedBox(height: 10),
//             DropdownButton<String>(
//               value: value,
//               isExpanded: true,
//               hint: const Text('Select an option'),
//               items: items
//                   .map((item) => DropdownMenuItem(
//                         value: item,
//                         child: Text(item),
//                       ))
//                   .toList(),
//               onChanged: onChanged,
//               icon: const Icon(Icons.arrow_drop_down, color: Colors.blue),
//               underline: Container(
//                 height: 2,
//                 color: Colors.blue,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

















import 'package:flutter/material.dart';
import 'CameraPage.dart';

class AddCameraPage extends StatefulWidget {
  final Function(String imagePath, String predictionResult) onImageCaptured;

  AddCameraPage({required this.onImageCaptured});

  @override
  _AddCameraPageState createState() => _AddCameraPageState();
}

class _AddCameraPageState extends State<AddCameraPage> {
  String? selectedCamera;
  String? selectedArea;

  final Map<String, String> areaUrls = {
    'Area A': 'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/user_images/OIP.jpg?t=2024-12-02T15%3A41%3A39.217Z',
    'Area B': 'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/user_images/1698824725385.jpg?t=2024-12-02T15%3A43%3A28.694Z',
    'Area C': 'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/5.jpg?t=2024-11-22T22%3A12%3A30.525Z',
    'Area D': 'https://fhocmeybhrszgjmndrbh.supabase.co/storage/v1/object/public/AREA/6.jpg?t=2024-11-22T22%3A12%3A40.837Z',
  };

  void navigateToCameraPage() {
    if (selectedCamera != null && selectedArea != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CameraPage(
            area: selectedArea!,
            camera: selectedCamera!,
            areaUrl: areaUrls[selectedArea]!,
            onImageCaptured: widget.onImageCaptured,
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select both camera and area!'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Camera and Area '),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDropdownCard(
                title: 'Select Camera:',
                value: selectedCamera,
                items: ['Camera 1', 'Camera 2', 'Camera 3', 'Camera 4'],
                onChanged: (value) {
                  setState(() {
                    selectedCamera = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              _buildDropdownCard(
                title: 'Select Area:',
                value: selectedArea,
                items: areaUrls.keys.toList(),
                onChanged: (value) {
                  setState(() {
                    selectedArea = value;
                  });
                },
              ),
              const SizedBox(height: 40),
              Center(
                child: ElevatedButton(
                  onPressed: navigateToCameraPage,
                  child: const Text(
                    'Confirm',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15,
                    ),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownCard({
    required String title,
    required String? value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return Card(
      elevation: 4,
      color: Colors.blue[50], // لون أزرق خفيف لتناسب المشروع
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            DropdownButton<String>(
              value: value,
              isExpanded: true,
              hint: const Text('Select an option'),
              items: items
                  .map((item) => DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      ))
                  .toList(),
              onChanged: onChanged,
              icon: const Icon(Icons.arrow_drop_down, color: Colors.blue),
              underline: Container(
                height: 2,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


