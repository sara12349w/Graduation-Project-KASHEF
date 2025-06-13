// // import 'package:flutter/material.dart';
// // import 'dart:async';
// // import 'dart:io';
// // import 'package:http/http.dart' as http;
// // import 'package:path_provider/path_provider.dart';
// // import 'dart:convert';
// // import 'package:supabase_flutter/supabase_flutter.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';

// // class ESP32CameraPage extends StatefulWidget {
// //   final String area;
// //   final String camera;
// //   final String areaUrl;
// //   final Function(String imagePath, String predictionResult) onImageCaptured;

// //   const ESP32CameraPage({
// //     Key? key,
// //     required this.area,
// //     required this.camera,
// //     required this.areaUrl,
// //     required this.onImageCaptured,
// //   }) : super(key: key);

// //   @override
// //   _ESP32CameraPageState createState() => _ESP32CameraPageState();
// // }

// // class _ESP32CameraPageState extends State<ESP32CameraPage> {
// //   String flaskServer = 'http://172.20.10.2:5000/latest-prediction'; // استبدل بعنوان خادم Flask
// //   bool isLoading = false;

// //   Timer? timer;

// //   @override
// //   void initState() {
// //     super.initState();
// //     // بدء المؤقت لجلب الصورة والتنبؤ كل دقيقة
// //     timer = Timer.periodic(Duration(minutes: 1), (Timer t) => _fetchDataFromFlask());
// //     // لجلب البيانات عند بدء التطبيق
// //     _fetchDataFromFlask();
// //   }

// //   @override
// //   void dispose() {
// //     timer?.cancel();
// //     super.dispose();
// //   }

// //   Future<void> _fetchDataFromFlask() async {
// //     setState(() {
// //       isLoading = true;
// //     });
// //     try {
// //       // طلب HTTP GET إلى Flask للحصول على أحدث صورة
// //       final imageResponse = await http.get(Uri.parse('$flaskServer/latest-image'));

// //       if (imageResponse.statusCode == 200) {
// //         // حفظ الصورة في المجلد المؤقت
// //         final tempDir = await getTemporaryDirectory();
// //         final filePath = '${tempDir.path}/esp32_image_${DateTime.now().millisecondsSinceEpoch}.jpg';
// //         final imageFile = File(filePath);
// //         await imageFile.writeAsBytes(imageResponse.bodyBytes);

// //         // جلب التنبؤ من Flask
// //         final predictionResponse = await http.get(Uri.parse('$flaskServer/latest-prediction'));

// //         if (predictionResponse.statusCode == 200) {
// //           final predictionData = jsonDecode(predictionResponse.body);
// //           final prediction = predictionData['prediction'] ?? 'Unknown';

// //           // رفع الصورة إلى Supabase
// //           final imageUrl = await uploadImageToSupabase(imageFile);

// //           if (imageUrl != null) {
// //             if (prediction == 'NoGas' || prediction.isEmpty) {
// //               _showNoGasDialog();
// //             } else {
// //               // حفظ البيانات في Firestore
// //               await _storeInFirestore(imageUrl, prediction);

// //               // استدعاء الدالة مع البيانات
// //               widget.onImageCaptured(imageUrl, prediction);
// //             }
// //           }
// //         } else {
// //           print('Error fetching prediction from Flask: ${predictionResponse.statusCode}');
// //         }
// //       } else {
// //         print('Error fetching image from Flask: ${imageResponse.statusCode}');
// //       }
// //     } catch (e) {
// //       print('Error fetching data from Flask: $e');
// //     } finally {
// //       setState(() {
// //         isLoading = false;
// //       });
// //     }
// //   }

// //   Future<String?> uploadImageToSupabase(File imageFile) async {
// //     try {
// //       final fileName = imageFile.path.split('/').last;
// //       await Supabase.instance.client.storage
// //           .from('user_images')
// //           .uploadBinary('uploads/$fileName', await imageFile.readAsBytes());

// //       final imageUrl = Supabase.instance.client.storage
// //           .from('user_images')
// //           .getPublicUrl('uploads/$fileName');

// //       return imageUrl;
// //     } catch (e) {
// //       print("Error uploading image: $e");
// //       return null;
// //     }
// //   }

// //   Future<void> _storeInFirestore(String imageUrl, String predictionResult) async {
// //     try {
// //       await FirebaseFirestore.instance.collection('History').add({
// //         'area': widget.area,
// //         'camera': widget.camera,
// //         'imageUrl': imageUrl,
// //         'normalImageUrl': widget.areaUrl,
// //         'predictionResult': predictionResult,
// //         'status': 'In Progress',
// //         'timestamp': Timestamp.now(),
// //       });
// //     } catch (e) {
// //       print("Error storing in Firestore: $e");
// //     }
// //   }

// //   void _showNoGasDialog() {
// //     showDialog(
// //       context: context,
// //       builder: (context) => AlertDialog(
// //         title: const Text(
// //           'No Gas Detected',
// //           style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
// //         ),
// //         content: const Text(
// //           'The system did not detect any gas or smoke. You can take another picture or close this message.',
// //           style: TextStyle(fontSize: 16),
// //         ),
// //         actions: [
// //           TextButton(
// //             onPressed: () {
// //               Navigator.pop(context); // إغلاق التنبيه
// //             },
// //             child: const Text(
// //               'OK',
// //               style: TextStyle(color: Colors.blue),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('ESP32 Camera'),
// //       ),
// //       body: Center(
// //         child: isLoading
// //             ? const CircularProgressIndicator()
// //             : ElevatedButton(
// //                 onPressed: _fetchDataFromFlask,
// //                 child: const Text('Fetch Image and Prediction'),
// //               ),
// //       ),
// //     );
// //   }
// // }



// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'package:path_provider/path_provider.dart';
// import 'dart:convert';
// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class ESP32CameraPage extends StatefulWidget {
//   final String area;
//   final String camera;
//   final String areaUrl;
//   final Function(String imagePath, String predictionResult) onImageCaptured;

//   const ESP32CameraPage({
//     Key? key,
//     required this.area,
//     required this.camera,
//     required this.areaUrl,
//     required this.onImageCaptured,
//   }) : super(key: key);

//   @override
//   _ESP32CameraPageState createState() => _ESP32CameraPageState();
// }

// class _ESP32CameraPageState extends State<ESP32CameraPage> {
//   String flaskServer = 'http://172.20.10.2:5000/upload-image'; // عنوان خادم Flask
//   bool isLoading = false;

//   Future<void> _fetchDataFromFlask() async {
//     setState(() {
//       isLoading = true;
//     });

//     try {
//       // طلب الصورة والتنبؤ من خادم Flask
//       final response = await http.get(Uri.parse(flaskServer));

//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         final prediction = data['result']['prediction'];
//         final imageBase64 = data['image'];

//         // تحويل الصورة من Base64 إلى ملف
//         final imageBytes = base64Decode(imageBase64);
//         final tempDir = await getTemporaryDirectory();
//         final filePath =
//             '${tempDir.path}/esp32_image_${DateTime.now().millisecondsSinceEpoch}.jpg';
//         final imageFile = File(filePath);
//         await imageFile.writeAsBytes(imageBytes);

//         // رفع الصورة إلى Supabase
//         final imageUrl = await uploadImageToSupabase(imageFile);

//         if (imageUrl != null) {
//           if (prediction == 'NoGas' || prediction.isEmpty) {
//             _showNoGasDialog();
//           } else {
//             // حفظ البيانات في Firestore
//             await _storeInFirestore(imageUrl, prediction);

//             // استدعاء الدالة مع البيانات
//             widget.onImageCaptured(imageUrl, prediction);
//           }
//         }
//       } else {
//         print('Error fetching data from Flask: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error fetching data from Flask: $e');
//     } finally {
//       setState(() {
//         isLoading = false;
//       });
//     }
//   }

//   Future<String?> uploadImageToSupabase(File imageFile) async {
//     try {
//       final fileName = imageFile.path.split('/').last;
//       await Supabase.instance.client.storage
//           .from('user_images')
//           .uploadBinary('uploads/$fileName', await imageFile.readAsBytes());

//       final imageUrl = Supabase.instance.client.storage
//           .from('user_images')
//           .getPublicUrl('uploads/$fileName');

//       return imageUrl;
//     } catch (e) {
//       print("Error uploading image: $e");
//       return null;
//     }
//   }

//   Future<void> _storeInFirestore(String imageUrl, String predictionResult) async {
//     try {
//       await FirebaseFirestore.instance.collection('History').add({
//         'area': widget.area,
//         'camera': widget.camera,
//         'imageUrl': imageUrl,
//         'normalImageUrl': widget.areaUrl,
//         'predictionResult': predictionResult,
//         'status': 'In Progress',
//         'timestamp': Timestamp.now(),
//       });
//     } catch (e) {
//       print("Error storing in Firestore: $e");
//     }
//   }

//   void _showNoGasDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text(
//           'No Gas Detected',
//           style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
//         ),
//         content: const Text(
//           'The system did not detect any gas or smoke. You can take another picture or close this message.',
//           style: TextStyle(fontSize: 16),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.pop(context); // إغلاق التنبيه
//             },
//             child: const Text(
//               'OK',
//               style: TextStyle(color: Colors.blue),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('ESP32 Camera'),
//       ),
//       body: Center(
//         child: isLoading
//             ? const CircularProgressIndicator()
//             : ElevatedButton(
//                 onPressed: _fetchDataFromFlask,
//                 child: const Text('Fetch Image and Prediction'),
//               ),
//       ),
//     );
//   }
// }
