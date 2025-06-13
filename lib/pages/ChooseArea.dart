// //ChooseArea
// //SecondPage

// // import 'package:flutter/material.dart';
// // import 'dart:io';

// // class ChooseArea extends StatelessWidget {
// //   final String imagePath;

// //   ChooseArea({required this.imagePath});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Your Files"),
// //       ),
// //       body: Column(
// //         children: [
// //           SizedBox(height: 20),
// //           Text(
// //             "Recently Captured:",
// //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //           ),
// //           SizedBox(height: 10),
// //           Container(
// //             width: 200,
// //             height: 200,
// //             decoration: BoxDecoration(
// //               border: Border.all(color: Colors.grey, width: 2),
// //             ),
// //             child: Image.file(
// //               File(imagePath),
// //               fit: BoxFit.cover,
// //             ),
// //           ),
// //           SizedBox(height: 10),
// //           Text(
// //             "File Uploaded: ${imagePath.split('/').last}",
// //             style: TextStyle(fontSize: 16),
// //           ),
// //           SizedBox(height: 20),
// //           ElevatedButton(
// //             onPressed: () {
// //               // زر للمزيد من الإجراءات مثل بدء تحليل الصورة
// //             },
// //             child: Text("Detect"),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import 'package:flutter_kashef/models/ImageProviderModel.dart';
// // import 'dart:io';

// // class CameraPage extends StatefulWidget {
// //   @override
// //   _CameraPageState createState() => _CameraPageState();
// // }

// // class _CameraPageState extends State<CameraPage> {
// //   String? _selectedArea; // المتغير لتخزين المنطقة المختارة
// //   String? _selectedGasType; // المتغير لتخزين نوع الغاز المختار

// //   // خيارات المنطقة
// //   final List<String> _areas = ['Area B1', 'Area A3', 'Area C4', 'Area D1'];

// //   // خيارات نوع الغاز
// //   final List<String> _gasTypes = ['Gas', 'Smoke', 'No Gas', 'Mixture'];

// //   void _captureImage(BuildContext context) {
// //     // افترض أنك حصلت على `imagePath` بعد التقاط الصورة
// //     String imagePath = "/path/to/image.jpg"; // مثال

// //     // تحديث المسار في `Provider`
// //     Provider.of<ImageProviderModel>(context, listen: false).setImagePath(imagePath);

// //     // إظهار رسالة تفيد بإتمام التقاط الصورة
// //     ScaffoldMessenger.of(context).showSnackBar(
// //       SnackBar(content: Text('Image captured and stored!')),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text("Capture Image")),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           crossAxisAlignment: CrossAxisAlignment.stretch,
// //           children: [
// //             // اختيار المنطقة
// //             Text("Choose Area:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// //             DropdownButton<String>(
// //               value: _selectedArea,
// //               hint: Text("Select Area"),
// //               items: _areas.map((area) {
// //                 return DropdownMenuItem(
// //                   value: area,
// //                   child: Text(area),
// //                 );
// //               }).toList(),
// //               onChanged: (value) {
// //                 setState(() {
// //                   _selectedArea = value;
// //                 });
// //               },
// //             ),
// //             SizedBox(height: 20),

// //             // اختيار نوع الغاز
// //             Text("Type of Gas:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// //             DropdownButton<String>(
// //               value: _selectedGasType,
// //               hint: Text("Select Gas Type"),
// //               items: _gasTypes.map((type) {
// //                 return DropdownMenuItem(
// //                   value: type,
// //                   child: Text(type),
// //                 );
// //               }).toList(),
// //               onChanged: (value) {
// //                 setState(() {
// //                   _selectedGasType = value;
// //                 });
// //               },
// //             ),
// //             SizedBox(height: 40),

// //             // زر التقاط الصورة
// //             ElevatedButton(
// //               onPressed: () {
// //                 if (_selectedArea != null && _selectedGasType != null) {
// //                   _captureImage(context);
// //                 } else {
// //                   ScaffoldMessenger.of(context).showSnackBar(
// //                     SnackBar(content: Text('Please select both area and gas type.')),
// //                   );
// //                 }
// //               },
// //               child: Text("Detect"),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'dart:io';
// // import 'package:provider/provider.dart';
// // import 'package:flutter_kashef/pages/alerts.dart';
// // import 'package:flutter_kashef/models/ImageProviderModel.dart';

// // class ChooseArea extends StatelessWidget {
// //   final String imagePath; // المسار للصورة الملتقطة

// //   ChooseArea({required this.imagePath});

// //   @override
// //   Widget build(BuildContext context) {
// //     String? selectedArea;
// //     String? selectedGasType;

// //     // خيارات المنطقة
// //     final List<String> areas = ['Area B1', 'Area A3', 'Area C4', 'Area D1'];

// //     // خيارات نوع الغاز
// //     final List<String> gasTypes = ['Gas', 'Smoke', 'No Gas', 'Mixture'];

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Choose Area and Gas Type"),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           crossAxisAlignment: CrossAxisAlignment.stretch,
// //           children: [
// //             // عرض الصورة الملتقطة
// //             Center(
// //               child: Container(
// //                 width: 300,
// //                 height: 300,
// //                 decoration: BoxDecoration(
// //                   border: Border.all(color: Colors.grey, width: 2),
// //                 ),
// //                 child: Image.file(
// //                   File(imagePath),
// //                   fit: BoxFit.cover,
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 20),

// //             // اختيار المنطقة
// //             Text("Choose Area:",
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// //             DropdownButton<String>(
// //               value: selectedArea,
// //               hint: Text("Select Area"),
// //               items: areas.map((area) {
// //                 return DropdownMenuItem(
// //                   value: area,
// //                   child: Text(area),
// //                 );
// //               }).toList(),
// //               onChanged: (value) {
// //                 selectedArea = value;
// //               },
// //             ),
// //             SizedBox(height: 20),

// //             // اختيار نوع الغاز
// //             Text("Type of Gas:",
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// //             DropdownButton<String>(
// //               value: selectedGasType,
// //               hint: Text("Select Gas Type"),
// //               items: gasTypes.map((type) {
// //                 return DropdownMenuItem(
// //                   value: type,
// //                   child: Text(type),
// //                 );
// //               }).toList(),
// //               onChanged: (value) {
// //                 selectedGasType = value;
// //               },
// //             ),
// //             SizedBox(height: 40),

// //             // زر الإرسال
// //             ElevatedButton(
// //               onPressed: () {
// //                 if (selectedArea != null && selectedGasType != null) {
// //                   // التأكد من أن نوع الغاز ليس "No Gas"
// //                   if (selectedGasType != "No Gas") {
// //                     // تنفيذ العملية المطلوبة هنا إذا تم اختيار نوع غاز مختلف عن "No Gas"
// //                     Provider.of<ImageProviderModel>(context, listen: false)
// //                         .setImagePath(widget.imagePath);
// //                     Provider.of<ImageProviderModel>(context, listen: false)
// //                         .setSelectedArea(selectedArea!);
// //                     Provider.of<ImageProviderModel>(context, listen: false)
// //                         .setSelectedGasType(selectedGasType!);

// //                     // التنقل إلى صفحة Alerts بدون تمرير المعاملات
// //                     Navigator.push(
// //                       context,
// //                       MaterialPageRoute(
// //                         builder: (context) => Alerts(),
// //                       ),
// //                     );
// //                   } else {
// //                     ScaffoldMessenger.of(context).showSnackBar(
// //                       SnackBar(
// //                           content: Text(
// //                               'Gas type cannot be "No Gas". Please select a valid type.')),
// //                     );
// //                   }
// //                 } else {
// //                   ScaffoldMessenger.of(context).showSnackBar(
// //                     SnackBar(
// //                         content: Text('Please select both area and gas type.')),
// //                   );
// //                 }
// //               },
// //               child: Text("Proceed"),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:flutter_kashef/pages/alerts.dart';
// // import 'package:provider/provider.dart';
// // import 'package:flutter_kashef/models/ImageProviderModel.dart';
// // import 'dart:io';
// // import 'package:cloud_firestore/cloud_firestore.dart';

// // class ChooseArea extends StatefulWidget {
// //   final String imagePath; // مسار الصورة

// //   ChooseArea({required this.imagePath});

// //   @override
// //   _ChooseAreaState createState() => _ChooseAreaState();
// // }

// // class _ChooseAreaState extends State<ChooseArea> {
// //   String? selectedArea;
// //   String? selectedGasType;

// //   final List<String> areas = ['Area B1', 'Area A3', 'Area C4', 'Area D1'];
// //   final List<String> gasTypes = ['Gas', 'Smoke', 'No Gas', 'Mixture'];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Choose Area and Gas Type"),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           crossAxisAlignment: CrossAxisAlignment.stretch,
// //           children: [
// //             // عرض الصورة الملتقطة
// //             Center(
// //               child: Container(
// //                 width: 300,
// //                 height: 300,
// //                 decoration: BoxDecoration(
// //                   border: Border.all(color: Colors.grey, width: 2),
// //                 ),
// //                 child: Image.file(
// //                   File(widget.imagePath), // استخدام widget.imagePath هنا
// //                   fit: BoxFit.cover,
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 20),

// //             // اختيار المنطقة
// //             Text("Choose Area:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// //             DropdownButton<String>(
// //               value: selectedArea,
// //               hint: Text("Select Area"),
// //               items: areas.map((area) {
// //                 return DropdownMenuItem(
// //                   value: area,
// //                   child: Text(area),
// //                 );
// //               }).toList(),
// //               onChanged: (value) {
// //                 setState(() {
// //                   selectedArea = value;
// //                 });
// //               },
// //             ),
// //             SizedBox(height: 20),

// //             // اختيار نوع الغاز
// //             Text("Type of Gas:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// //             DropdownButton<String>(
// //               value: selectedGasType,
// //               hint: Text("Select Gas Type"),
// //               items: gasTypes.map((type) {
// //                 return DropdownMenuItem(
// //                   value: type,
// //                   child: Text(type),
// //                 );
// //               }).toList(),
// //               onChanged: (value) {
// //                 setState(() {
// //                   selectedGasType = value;
// //                 });
// //               },
// //             ),
// //             SizedBox(height: 40),

// //             // زر الإرسال
// //             ElevatedButton(
// //               onPressed: () {
// //                 if (selectedArea != null && selectedGasType != null) {
// //                   if (selectedGasType != "No Gas") {
// //                     // تحديث البيانات في Provider
// //                  Provider.of<ImageProviderModel>(context, listen: false).setImagePath(widget.imagePath);
// //                 Provider.of<ImageProviderModel>(context, listen: false).setSelectedArea(selectedArea!);
// //                 Provider.of<ImageProviderModel>(context, listen: false).setSelectedGasType(selectedGasType!);

// //                     // التنقل إلى صفحة Alerts بدون تمرير المعاملات
// //                     Navigator.push(
// //                       context,
// //                       MaterialPageRoute(
// //                         builder: (context) => Alerts(),
// //                       ),
// //                     );
// //                   } else {
// //                     ScaffoldMessenger.of(context).showSnackBar(
// //                       SnackBar(content: Text('Gas type cannot be "No Gas". Please select a valid type.')),
// //                     );
// //                   }
// //                 } else {
// //                   ScaffoldMessenger.of(context).showSnackBar(
// //                     SnackBar(content: Text('Please select both area and gas type.')),
// //                   );
// //                 }
// //               },
// //               child: Text("Proceed"),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_kashef/pages/alerts.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_kashef/models/ImageProviderModel.dart';
// import 'dart:io';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class ChooseArea extends StatefulWidget {
//   final String imagePath; // مسار الصورة

//   ChooseArea({required this.imagePath});

//   @override
//   _ChooseAreaState createState() => _ChooseAreaState();
// }

// class _ChooseAreaState extends State<ChooseArea> {
//   String? selectedArea;
//   String? selectedGasType;

//   final List<String> areas = ['Area B1', 'Area A3', 'Area C4', 'Area D1'];
//   final List<String> gasTypes = ['Gas', 'Smoke', 'No Gas', 'Mixture'];

//   // دالة لحفظ البيانات في Firestore
//   Future<void> saveToFirestore() async {
//     await FirebaseFirestore.instance.collection('History').add({
//       'imagePath': widget.imagePath,
//       'selectedArea': selectedArea,
//       'selectedGasType': selectedGasType,
//       'timestamp': Timestamp.now(),
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Choose Area and Gas Type"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             // عرض الصورة الملتقطة
//             Center(
//               child: Container(
//                 width: 300,
//                 height: 300,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey, width: 2),
//                 ),
//                 child: Image.file(
//                   File(widget.imagePath), // استخدام widget.imagePath هنا
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),

//             // اختيار المنطقة
//             Text("Choose Area:",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             DropdownButton<String>(
//               value: selectedArea,
//               hint: Text("Select Area"),
//               items: areas.map((area) {
//                 return DropdownMenuItem(
//                   value: area,
//                   child: Text(area),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 setState(() {
//                   selectedArea = value;
//                 });
//               },
//             ),
//             SizedBox(height: 20),

//             // اختيار نوع الغاز
//             Text("Type of Gas:",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             DropdownButton<String>(
//               value: selectedGasType,
//               hint: Text("Select Gas Type"),
//               items: gasTypes.map((type) {
//                 return DropdownMenuItem(
//                   value: type,
//                   child: Text(type),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 setState(() {
//                   selectedGasType = value;
//                 });
//               },
//             ),
//             SizedBox(height: 40),

//             // زر الإرسال
//             ElevatedButton(
//               onPressed: () async {
//                 if (selectedArea != null && selectedGasType != null) {
//                   if (selectedGasType != "No Gas") {
//                     // تحديث البيانات في Provider
//                     Provider.of<ImageProviderModel>(context, listen: false)
//                         .setImagePath(widget.imagePath);
//                     Provider.of<ImageProviderModel>(context, listen: false)
//                         .setSelectedArea(selectedArea!);
//                     Provider.of<ImageProviderModel>(context, listen: false)
//                         .setSelectedGasType(selectedGasType!);

//                     // حفظ البيانات في Firestore
//                     await saveToFirestore();

//                     // التنقل إلى صفحة Alerts بدون تمرير المعاملات
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => Alerts(),
//                       ),
//                     );
//                   } else {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                           content: Text(
//                               'Gas type cannot be "No Gas". Please select a valid type.')),
//                     );
//                   }
//                 } else {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(
//                         content: Text('Please select both area and gas type.')),
//                   );
//                 }
//               },
//               child: Text("Proceed"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
