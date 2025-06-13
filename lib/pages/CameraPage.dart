// // // // //   final Function(String imagePath, String predictionResult) onImageCaptured;

// // // // // //   CameraPage({required this.onImageCaptured});

// // // // // //   @override
// // // // // //   _CameraPageState createState() => _CameraPageState();
// // // // // // }

// // // // // // class _CameraPageState extends State<CameraPage> {
// // // // // //   CameraController? _cameraController;
// // // // // //   List<CameraDescription>? _cameras;
// // // // // //   bool _isInitialized = false;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     _initializeCamera();
// // // // // //   }

// // // // // //   Future<void> _initializeCamera() async {
// // // // // //     _cameras = await availableCameras();
// // // // // //     _cameraController = CameraController(
// // // // // //       _cameras![0],
// // // // // //       ResolutionPreset.high,
// // // // // //     );

// // // // // //     await _cameraController!.initialize();
// // // // // //     setState(() {
// // // // // //       _isInitialized = true;
// // // // // //     });
// // // // // //   }

// // // // // //   @override
// // // // // //   void dispose() {
// // // // // //     _cameraController?.dispose();
// // // // // //     super.dispose();
// // // // // //   }

// // // // // //   Future<void> _takePicture() async {
// // // // // //     try {
// // // // // //       final image = await _cameraController!.takePicture();
// // // // // //       print('Image path: ${image.path}'); // Log image path for debugging

// // // // // //       // Send the image to Flask and get the prediction result
// // // // // //       final result = await sendImageToFlask(File(image.path));
// // // // // //       print('Prediction result: ${result["prediction"]}'); // Log prediction result

// // // // // //       // Save the image path and prediction result to SharedPreferences
// // // // // //       await _saveImagePathAndPrediction(image.path, result["prediction"]);

// // // // // //       // Navigate to Alerts page with prediction result
// // // // // //       Navigator.push(
// // // // // //         context,
// // // // // //         MaterialPageRoute(
// // // // // //           builder: (context) => Alerts(),
// // // // // //         ),
// // // // // //       );

// // // // // //       // Trigger the callback passed to the widget
// // // // // //       widget.onImageCaptured(image.path, result["prediction"]);
// // // // // //     } catch (e) {
// // // // // //       print("Error: $e");
// // // // // //     }
// // // // // //   }

// // // // // //   Future<void> _saveImagePathAndPrediction(String imagePath, String predictionResult) async {
// // // // // //     final prefs = await SharedPreferences.getInstance();
// // // // // //     await prefs.setString('lastImagePath', imagePath);
// // // // // //     await prefs.setString('lastPredictionResult', predictionResult);
// // // // // //   }

// // // // // //   Future<Map<String, dynamic>> sendImageToFlask(File imageFile) async {
// // // // // //     var request = http.MultipartRequest(
// // // // // //       'POST',
// // // // // //       Uri.parse('http://192.168.1.29:5000/predict'), // Replace with your Flask server URL
// // // // // //     );
// // // // // //     request.files.add(
// // // // // //       await http.MultipartFile.fromPath('image', imageFile.path),
// // // // // //     );
// // // // // //     var response = await request.send();
// // // // // //     if (response.statusCode == 200) {
// // // // // //       var responseData = await http.Response.fromStream(response);
// // // // // //       print('Response body: ${responseData.body}'); // Log response for verification
// // // // // //       var result = jsonDecode(responseData.body);
// // // // // //       return {"prediction": result["prediction"]};
// // // // // //     } else {
// // // // // //       print('Error: ${response.statusCode}'); // Log error status code
// // // // // //       return {"prediction": "Unknown"};
// // // // // //     }
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       appBar: AppBar(
// // // // // //         title: Text('Capture Image'),
// // // // // //         backgroundColor: Colors.black,
// // // // // //       ),
// // // // // //       body: Stack(
// // // // // //         children: [
// // // // // //           _isInitialized
// // // // // //               ? CameraPreview(_cameraController!)
// // // // // //               : Center(child: CircularProgressIndicator()),
// // // // // //           Positioned(
// // // // // //             bottom: 30,
// // // // // //             left: 0,
// // // // // //             right: 0,
// // // // // //             child: Center(
// // // // // //               child: ElevatedButton(
// // // // // //                 onPressed: _takePicture,
// // // // // //                 style: ElevatedButton.styleFrom(
// // // // // //                   backgroundColor: Colors.blue, // Updated parameter for button background color
// // // // // //                   shape: CircleBorder(),
// // // // // //                   padding: EdgeInsets.all(20),
// // // // // //                 ),
// // // // // //                 child: Icon(
// // // // // //                   Icons.camera_alt,
// // // // // //                   color: Colors.white,
// // // // // //                   size: 40,
// // // // // //                 ),
// // // // // //               ),
// // // // // //             ),
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:camera/camera.dart';
// // // // // import 'dart:io';
// // // // // import 'package:http/http.dart' as http;
// // // // // import 'dart:convert';
// // // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // // import 'alerts.dart'; // Ensure the Alerts page is imported correctly

// // // // // class CameraPage extends StatefulWidget {
// // // // //   final Function(String imagePath, String predictionResult) onImageCaptured;

// // // // //   CameraPage({required this.onImageCaptured});

// // // // //   @override
// // // // //   _CameraPageState createState() => _CameraPageState();
// // // // // }

// // // // // class _CameraPageState extends State<CameraPage> with WidgetsBindingObserver {
// // // // //   CameraController? _cameraController;
// // // // //   List<CameraDescription>? _cameras;
// // // // //   bool _isInitialized = false;

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     WidgetsBinding.instance.addObserver(this);
// // // // //     _initializeCamera();
// // // // //   }

// // // // //   @override
// // // // //   void dispose() {
// // // // //     WidgetsBinding.instance.removeObserver(this);
// // // // //     _cameraController?.dispose();
// // // // //     super.dispose();
// // // // //   }

// // // // //   @override
// // // // //   void didChangeAppLifecycleState(AppLifecycleState state) {
// // // // //     if (state == AppLifecycleState.inactive || state == AppLifecycleState.paused) {
// // // // //       _cameraController?.dispose();
// // // // //     } else if (state == AppLifecycleState.resumed) {
// // // // //       if (_cameraController != null) {
// // // // //         _initializeCamera();
// // // // //       }
// // // // //     }
// // // // //   }

// // // // //   Future<void> _initializeCamera() async {
// // // // //     _cameras = await availableCameras();
// // // // //     _cameraController = CameraController(
// // // // //       _cameras![0],
// // // // //       ResolutionPreset.high,
// // // // //     );

// // // // //     await _cameraController!.initialize();
// // // // //     setState(() {
// // // // //       _isInitialized = true;
// // // // //     });
// // // // //   }

// // // // //   Future<void> _takePicture() async {
// // // // //     try {
// // // // //       final image = await _cameraController!.takePicture();
// // // // //       print('Image path: ${image.path}'); // Log image path for debugging

// // // // //       // Send the image to Flask and get the prediction result
// // // // //       final result = await sendImageToFlask(File(image.path));
// // // // //       print('Prediction result: ${result["prediction"]}'); // Log prediction result

// // // // //       // Save the image path and prediction result to SharedPreferences
// // // // //       await _saveImagePathAndPrediction(image.path, result["prediction"]);

// // // // //       // Navigate to Alerts page with prediction result
// // // // //       Navigator.push(
// // // // //         context,
// // // // //         MaterialPageRoute(
// // // // //           builder: (context) => Alerts(),
// // // // //         ),
// // // // //       );

// // // // //       // Trigger the callback passed to the widget
// // // // //       widget.onImageCaptured(image.path, result["prediction"]);
// // // // //     } catch (e) {
// // // // //       print("Error: $e");
// // // // //     }
// // // // //   }

// // // // //   Future<void> _saveImagePathAndPrediction(String imagePath, String predictionResult) async {
// // // // //     final prefs = await SharedPreferences.getInstance();
// // // // //     await prefs.setString('lastImagePath', imagePath);
// // // // //     await prefs.setString('lastPredictionResult', predictionResult);
// // // // //   }

// // // // //   Future<Map<String, dynamic>> sendImageToFlask(File imageFile) async {
// // // // //     var request = http.MultipartRequest(
// // // // //       'POST',
// // // // //       Uri.parse('http://192.168.1.29:5000/predict'), // Replace with your Flask server URL
// // // // //     );
// // // // //     request.files.add(
// // // // //       await http.MultipartFile.fromPath('image', imageFile.path),
// // // // //     );
// // // // //     var response = await request.send();
// // // // //     if (response.statusCode == 200) {
// // // // //       var responseData = await http.Response.fromStream(response);
// // // // //       print('Response body: ${responseData.body}'); // Log response for verification
// // // // //       var result = jsonDecode(responseData.body);
// // // // //       return {"prediction": result["prediction"]};
// // // // //     } else {
// // // // //       print('Error: ${response.statusCode}'); // Log error status code
// // // // //       return {"prediction": "Unknown"};
// // // // //     }
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text('Capture Image'),
// // // // //         backgroundColor: Colors.black,
// // // // //       ),
// // // // //       body: Stack(
// // // // //         children: [
// // // // //           _isInitialized
// // // // //               ? CameraPreview(_cameraController!)
// // // // //               : Center(child: CircularProgressIndicator()),
// // // // //           Positioned(
// // // // //             bottom: 30,
// // // // //             left: 0,
// // // // //             right: 0,
// // // // //             child: Center(
// // // // //               child: ElevatedButton(
// // // // //                 onPressed: _takePicture,
// // // // //                 style: ElevatedButton.styleFrom(
// // // // //                   backgroundColor: Colors.blue, // Updated parameter for button background color
// // // // //                   shape: CircleBorder(),
// // // // //                   padding: EdgeInsets.all(20),
// // // // //                 ),
// // // // //                 child: Icon(
// // // // //                   Icons.camera_alt,
// // // // //                   color: Colors.white,
// // // // //                   size: 40,
// // // // //                 ),
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:camera/camera.dart';
// // // // // import 'dart:io';
// // // // // import 'package:http/http.dart' as http;
// // // // // import 'dart:convert';
// // // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // // import 'alerts.dart'; // Ensure the Alerts page is imported correctly

// // // // // class CameraPage extends StatefulWidget {
// // // // //   final Function(String imagePath, String predictionResult) onImageCaptured;

// // // // //   CameraPage({required this.onImageCaptured});

// // // // //   @override
// // // // //   _CameraPageState createState() => _CameraPageState();
// // // // // }

// // // // // class _CameraPageState extends State<CameraPage> with WidgetsBindingObserver {
// // // // //   CameraController? _cameraController;
// // // // //   List<CameraDescription>? _cameras;
// // // // //   bool _isInitialized = false;

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     WidgetsBinding.instance.addObserver(this);
// // // // //     _initializeCamera();
// // // // //   }

// // // // //   @override
// // // // //   void dispose() {
// // // // //     WidgetsBinding.instance.removeObserver(this);
// // // // //     _cameraController?.dispose();
// // // // //     super.dispose();
// // // // //   }

// // // // //   @override
// // // // //   void didChangeAppLifecycleState(AppLifecycleState state) {
// // // // //     if (state == AppLifecycleState.inactive ||
// // // // //         state == AppLifecycleState.paused) {
// // // // //       _cameraController?.dispose();
// // // // //       setState(() {
// // // // //         _isInitialized = false;
// // // // //       });
// // // // //     } else if (state == AppLifecycleState.resumed) {
// // // // //       if (!_isInitialized) {
// // // // //         _initializeCamera();
// // // // //       }
// // // // //     }
// // // // //   }

// // // // //   Future<void> _initializeCamera() async {
// // // // //     try {
// // // // //       _cameras = await availableCameras();
// // // // //       _cameraController = CameraController(
// // // // //         _cameras![0],
// // // // //         ResolutionPreset.high,
// // // // //       );
// // // // //       await _cameraController!.initialize();
// // // // //       setState(() {
// // // // //         _isInitialized = true;
// // // // //       });
// // // // //     } catch (e) {
// // // // //       print("Error initializing camera: $e");
// // // // //     }
// // // // //   }

// // // // //   Future<void> _takePicture() async {
// // // // //     try {
// // // // //       final image = await _cameraController!.takePicture();
// // // // //       print('Image path: ${image.path}'); // Log image path for debugging

// // // // //       // Send the image to Flask and get the prediction result
// // // // //       final result = await sendImageToFlask(File(image.path));
// // // // //       print(
// // // // //           'Prediction result: ${result["prediction"]}'); // Log prediction result

// // // // //       // Save the image path and prediction result to SharedPreferences
// // // // //       await _saveImagePathAndPrediction(image.path, result["prediction"]);

// // // // //       // Navigate to Alerts page with prediction result
// // // // //       Navigator.push(
// // // // //         context,
// // // // //         MaterialPageRoute(
// // // // //           builder: (context) => Alerts(),
// // // // //         ),
// // // // //       );

// // // // //       // Trigger the callback passed to the widget
// // // // //       widget.onImageCaptured(image.path, result["prediction"]);
// // // // //     } catch (e) {
// // // // //       print("Error: $e");
// // // // //     }
// // // // //   }

// // // // //   Future<void> _saveImagePathAndPrediction(
// // // // //       String imagePath, String predictionResult) async {
// // // // //     final prefs = await SharedPreferences.getInstance();
// // // // //     await prefs.setString('lastImagePath', imagePath);
// // // // //     await prefs.setString('lastPredictionResult', predictionResult);
// // // // //   }

// // // // //   Future<Map<String, dynamic>> sendImageToFlask(File imageFile) async {
// // // // //     var request = http.MultipartRequest(
// // // // //       'POST',
// // // // //      Uri.parse('http://192.168.1.29:5000/predict'), // Replace with your Flask server URL
// // // // //     );
// // // // //     request.files.add(
// // // // //       await http.MultipartFile.fromPath('image', imageFile.path),
// // // // //     );
// // // // //     var response = await request.send();
// // // // //     if (response.statusCode == 200) {
// // // // //       var responseData = await http.Response.fromStream(response);
// // // // //       print(
// // // // //           'Response body: ${responseData.body}'); // Log response for verification
// // // // //       var result = jsonDecode(responseData.body);
// // // // //       return {"prediction": result["prediction"]};
// // // // //     } else {
// // // // //       print('Error: ${response.statusCode}'); // Log error status code
// // // // //       return {"prediction": "Unknown"};
// // // // //     }
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text('Capture Image'),
// // // // //         backgroundColor: Colors.black,
// // // // //       ),
// // // // //       body: Stack(
// // // // //         children: [
// // // // //           _isInitialized
// // // // //               ? CameraPreview(_cameraController!)
// // // // //               : Center(child: CircularProgressIndicator()),
// // // // //           Positioned(
// // // // //             bottom: 30,
// // // // //             left: 0,
// // // // //             right: 0,
// // // // //             child: Center(
// // // // //               child: ElevatedButton(
// // // // //                 onPressed: _takePicture,
// // // // //                 style: ElevatedButton.styleFrom(
// // // // //                   backgroundColor: Colors
// // // // //                       .blue, // Updated parameter for button background color
// // // // //                   shape: CircleBorder(),
// // // // //                   padding: EdgeInsets.all(20),
// // // // //                 ),
// // // // //                 child: Icon(
// // // // //                   Icons.camera_alt,
// // // // //                   color: Colors.white,
// // // // //                   size: 40,
// // // // //                 ),
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:camera/camera.dart';
// // // // // import 'dart:io';
// // // // // import 'package:http/http.dart' as http;
// // // // // import 'dart:convert';
// // // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // // import 'package:supabase_flutter/supabase_flutter.dart'; // Ensure Supabase is imported correctly
// // // // // import 'alerts.dart'; // Ensure the Alerts page is imported correctly

// // // // // class CameraPage extends StatefulWidget {
// // // // //   final Function(String imagePath, String predictionResult) onImageCaptured;

// // // // //   CameraPage({required this.onImageCaptured});

// // // // //   @override
// // // // //   _CameraPageState createState() => _CameraPageState();
// // // // // }

// // // // // class _CameraPageState extends State<CameraPage> with WidgetsBindingObserver {
// // // // //   CameraController? _cameraController;
// // // // //   List<CameraDescription>? _cameras;
// // // // //   bool _isInitialized = false;

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     WidgetsBinding.instance.addObserver(this);
// // // // //     _initializeCamera();
// // // // //   }

// // // // //   @override
// // // // //   void dispose() {
// // // // //     WidgetsBinding.instance.removeObserver(this);
// // // // //     _cameraController?.dispose();
// // // // //     super.dispose();
// // // // //   }

// // // // //   @override
// // // // //   void didChangeAppLifecycleState(AppLifecycleState state) {
// // // // //     if (state == AppLifecycleState.inactive ||
// // // // //         state == AppLifecycleState.paused) {
// // // // //       _cameraController?.dispose();
// // // // //       setState(() {
// // // // //         _isInitialized = false;
// // // // //       });
// // // // //     } else if (state == AppLifecycleState.resumed) {
// // // // //       if (!_isInitialized) {
// // // // //         _initializeCamera();
// // // // //       }
// // // // //     }
// // // // //   }

// // // // //   Future<void> _initializeCamera() async {
// // // // //     try {
// // // // //       _cameras = await availableCameras();
// // // // //       _cameraController = CameraController(
// // // // //         _cameras![0],
// // // // //         ResolutionPreset.high,
// // // // //       );
// // // // //       await _cameraController!.initialize();
// // // // //       setState(() {
// // // // //         _isInitialized = true;
// // // // //       });
// // // // //     } catch (e) {
// // // // //       print("Error initializing camera: $e");
// // // // //     }
// // // // //   }

// // // // //   Future<void> _takePicture() async {
// // // // //     try {
// // // // //       final image = await _cameraController!.takePicture();
// // // // //       print('Image path: ${image.path}'); // Log image path for debugging

// // // // //       // رفع الصورة إلى Supabase
// // // // //       final response = await uploadImageToSupabase(File(image.path));
// // // // //       if (response != null) {
// // // // //         print('Image uploaded to Supabase: $response');
// // // // //       } else {
// // // // //         print('Failed to upload image to Supabase');
// // // // //       }

// // // // //       // Send the image to Flask and get the prediction result
// // // // //       final result = await sendImageToFlask(File(image.path));
// // // // //       print('Prediction result: ${result["prediction"]}'); // Log prediction result

// // // // //       // Save the image path and prediction result to SharedPreferences
// // // // //       await _saveImagePathAndPrediction(image.path, result["prediction"]);

// // // // //       // Navigate to Alerts page with prediction result
// // // // //       Navigator.push(
// // // // //         context,
// // // // //         MaterialPageRoute(
// // // // //           builder: (context) => Alerts(),
// // // // //         ),
// // // // //       );

// // // // //       // Trigger the callback passed to the widget
// // // // //       widget.onImageCaptured(image.path, result["prediction"]);
// // // // //     } catch (e) {
// // // // //       print("Error: $e");
// // // // //     }
// // // // //   }

// // // // //   Future<String?> uploadImageToSupabase(File imageFile) async {
// // // // //     try {
// // // // //       final fileName = imageFile.path.split('/').last;
// // // // //       final response = await Supabase.instance.client.storage
// // // // //           .from('user_images') // Replace with your bucket name
// // // // //           .uploadBinary('uploads/$fileName', await imageFile.readAsBytes());
// // // // //       return response;
// // // // //     } catch (e) {
// // // // //       print('Error uploading image to Supabase: $e');
// // // // //       return null;
// // // // //     }
// // // // //   }

// // // // //   Future<void> _saveImagePathAndPrediction(
// // // // //       String imagePath, String predictionResult) async {
// // // // //     final prefs = await SharedPreferences.getInstance();
// // // // //     await prefs.setString('lastImagePath', imagePath);
// // // // //     await prefs.setString('lastPredictionResult', predictionResult);
// // // // //   }

// // // // //   Future<Map<String, dynamic>> sendImageToFlask(File imageFile) async {
// // // // //     var request = http.MultipartRequest(
// // // // //       'POST',
// // // // //       Uri.parse('http://192.168.1.29:5000/predict'), // Replace with your Flask server URL
// // // // //     );
// // // // //     request.files.add(
// // // // //       await http.MultipartFile.fromPath('image', imageFile.path),
// // // // //     );
// // // // //     var response = await request.send();
// // // // //     if (response.statusCode == 200) {
// // // // //       var responseData = await http.Response.fromStream(response);
// // // // //       print('Response body: ${responseData.body}'); // Log response for verification
// // // // //       var result = jsonDecode(responseData.body);
// // // // //       return {"prediction": result["prediction"]};
// // // // //     } else {
// // // // //       print('Error: ${response.statusCode}'); // Log error status code
// // // // //       return {"prediction": "Unknown"};
// // // // //     }
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text('Capture Image'),
// // // // //         backgroundColor: Colors.black,
// // // // //       ),
// // // // //       body: Stack(
// // // // //         children: [
// // // // //           _isInitialized
// // // // //               ? CameraPreview(_cameraController!)
// // // // //               : Center(child: CircularProgressIndicator()),
// // // // //           Positioned(
// // // // //             bottom: 30,
// // // // //             left: 0,
// // // // //             right: 0,
// // // // //             child: Center(
// // // // //               child: ElevatedButton(
// // // // //                 onPressed: _takePicture,
// // // // //                 style: ElevatedButton.styleFrom(
// // // // //                   backgroundColor: Colors.blue, // Updated parameter for button background color
// // // // //                   shape: CircleBorder(),
// // // // //                   padding: EdgeInsets.all(20),
// // // // //                 ),
// // // // //                 child: Icon(
// // // // //                   Icons.camera_alt,
// // // // //                   color: Colors.white,
// // // // //                   size: 40,
// // // // //                 ),
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:camera/camera.dart';
// // // // // import 'dart:io';
// // // // // import 'package:http/http.dart' as http;
// // // // // import 'dart:convert';
// // // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // // import 'package:supabase_flutter/supabase_flutter.dart'; // Ensure Supabase is imported correctly
// // // // // import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore
// // // // // import 'alerts.dart'; // Ensure the Alerts page is imported correctly

// // // // // class CameraPage extends StatefulWidget {
// // // // //   final Function(String imagePath, String predictionResult) onImageCaptured;

// // // // //   CameraPage({required this.onImageCaptured});

// // // // //   @override
// // // // //   _CameraPageState createState() => _CameraPageState();
// // // // // }

// // // // // class _CameraPageState extends State<CameraPage> with WidgetsBindingObserver {
// // // // //   CameraController? _cameraController;
// // // // //   List<CameraDescription>? _cameras;
// // // // //   bool _isInitialized = false;

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     WidgetsBinding.instance.addObserver(this);
// // // // //     _initializeCamera();
// // // // //   }

// // // // //   @override
// // // // //   void dispose() {
// // // // //     WidgetsBinding.instance.removeObserver(this);
// // // // //     _cameraController?.dispose();
// // // // //     super.dispose();
// // // // //   }

// // // // //   @override
// // // // //   void didChangeAppLifecycleState(AppLifecycleState state) {
// // // // //     if (state == AppLifecycleState.inactive ||
// // // // //         state == AppLifecycleState.paused) {
// // // // //       _cameraController?.dispose();
// // // // //       setState(() {
// // // // //         _isInitialized = false;
// // // // //       });
// // // // //     } else if (state == AppLifecycleState.resumed) {
// // // // //       if (!_isInitialized) {
// // // // //         _initializeCamera();
// // // // //       }
// // // // //     }
// // // // //   }

// // // // //   Future<void> _initializeCamera() async {
// // // // //     try {
// // // // //       _cameras = await availableCameras();
// // // // //       _cameraController = CameraController(
// // // // //         _cameras![0],
// // // // //         ResolutionPreset.high,
// // // // //       );
// // // // //       await _cameraController!.initialize();
// // // // //       setState(() {
// // // // //         _isInitialized = true;
// // // // //       });
// // // // //     } catch (e) {
// // // // //       print("Error initializing camera: $e");
// // // // //     }
// // // // //   }

// // // // //   Future<void> _takePicture() async {
// // // // //     try {
// // // // //       final image = await _cameraController!.takePicture();
// // // // //       print('Image path: ${image.path}'); // Log image path for debugging

// // // // //       // رفع الصورة إلى Supabase والحصول على رابط URL
// // // // //       final imageUrl = await uploadImageToSupabase(File(image.path));
// // // // //       if (imageUrl != null) {
// // // // //         print('Image uploaded to Supabase: $imageUrl');

// // // // //         // تخزين رابط URL في Firestore
// // // // //         await storeImageUrlInFirestore(imageUrl);
// // // // //       } else {
// // // // //         print('Failed to upload image to Supabase');
// // // // //       }

// // // // //       // Send the image to Flask and get the prediction result
// // // // //       final result = await sendImageToFlask(File(image.path));
// // // // //       print('Prediction result: ${result["prediction"]}'); // Log prediction result

// // // // //       // Save the image path and prediction result to SharedPreferences
// // // // //       await _saveImagePathAndPrediction(image.path, result["prediction"]);

// // // // //       // Navigate to Alerts page with prediction result
// // // // //       Navigator.push(
// // // // //         context,
// // // // //         MaterialPageRoute(
// // // // //           builder: (context) => Alerts(),
// // // // //         ),
// // // // //       );

// // // // //       // Trigger the callback passed to the widget
// // // // //       widget.onImageCaptured(image.path, result["prediction"]);
// // // // //     } catch (e) {
// // // // //       print("Error: $e");
// // // // //     }
// // // // //   }

// // // // //   Future<String?> uploadImageToSupabase(File imageFile) async {
// // // // //     try {
// // // // //       final fileName = imageFile.path.split('/').last;
// // // // //       final response = await Supabase.instance.client.storage
// // // // //           .from('user_images') // Replace with your bucket name
// // // // //           .uploadBinary('uploads/$fileName', await imageFile.readAsBytes());

// // // // //       if (response != null) {
// // // // //         // الحصول على رابط URL للصورة
// // // // //         final publicUrl = Supabase.instance.client.storage
// // // // //             .from('user_images')
// // // // //             .getPublicUrl('uploads/$fileName');
// // // // //         return publicUrl; // Return the public URL
// // // // //       } else {
// // // // //         print('Error: Failed to upload image');
// // // // //         return null;
// // // // //       }
// // // // //     } catch (e) {
// // // // //       print('Error uploading image to Supabase: $e');
// // // // //       return null;
// // // // //     }
// // // // //   }

// // // // //   Future<void> storeImageUrlInFirestore(String imageUrl) async {
// // // // //     try {
// // // // //       await FirebaseFirestore.instance.collection('History').add({
// // // // //         'imageUrl': imageUrl,
// // // // //         'uploadedAt': Timestamp.now(),
// // // // //       });
// // // // //       print('Image URL stored in Firestore');
// // // // //     } catch (e) {
// // // // //       print('Error storing image URL in Firestore: $e');
// // // // //     }
// // // // //   }

// // // // //   Future<void> _saveImagePathAndPrediction(
// // // // //       String imagePath, String predictionResult) async {
// // // // //     final prefs = await SharedPreferences.getInstance();
// // // // //     await prefs.setString('lastImagePath', imagePath);
// // // // //     await prefs.setString('lastPredictionResult', predictionResult);
// // // // //   }

// // // // //   Future<Map<String, dynamic>> sendImageToFlask(File imageFile) async {
// // // // //     var request = http.MultipartRequest(
// // // // //       'POST',
// // // // //       Uri.parse('http://192.168.1.29:5000/predict'), // Replace with your Flask server URL
// // // // //     );
// // // // //     request.files.add(
// // // // //       await http.MultipartFile.fromPath('image', imageFile.path),
// // // // //     );
// // // // //     var response = await request.send();
// // // // //     if (response.statusCode == 200) {
// // // // //       var responseData = await http.Response.fromStream(response);
// // // // //       print('Response body: ${responseData.body}'); // Log response for verification
// // // // //       var result = jsonDecode(responseData.body);
// // // // //       return {"prediction": result["prediction"]};
// // // // //     } else {
// // // // //       print('Error: ${response.statusCode}'); // Log error status code
// // // // //       return {"prediction": "Unknown"};
// // // // //     }
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text('Capture Image'),
// // // // //         backgroundColor: Colors.black,
// // // // //       ),
// // // // //       body: Stack(
// // // // //         children: [
// // // // //           _isInitialized
// // // // //               ? CameraPreview(_cameraController!)
// // // // //               : Center(child: CircularProgressIndicator()),
// // // // //           Positioned(
// // // // //             bottom: 30,
// // // // //             left: 0,
// // // // //             right: 0,
// // // // //             child: Center(
// // // // //               child: ElevatedButton(
// // // // //                 onPressed: _takePicture,
// // // // //                 style: ElevatedButton.styleFrom(
// // // // //                   backgroundColor: Colors.blue, // Updated parameter for button background color
// // // // //                   shape: CircleBorder(),
// // // // //                   padding: EdgeInsets.all(20),
// // // // //                 ),
// // // // //                 child: Icon(
// // // // //                   Icons.camera_alt,
// // // // //                   color: Colors.white,
// // // // //                   size: 40,
// // // // //                 ),
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // //  }

// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:camera/camera.dart';
// // // // // import 'dart:io';
// // // // // import 'package:http/http.dart' as http;
// // // // // import 'dart:convert';
// // // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // // import 'package:supabase_flutter/supabase_flutter.dart'; // Ensure Supabase is imported correctly
// // // // // import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore
// // // // // import 'alerts.dart'; // Ensure the Alerts page is imported correctly

// // // // // class CameraPage extends StatefulWidget {
// // // // //   final Function(String imagePath, String predictionResult) onImageCaptured;

// // // // //   CameraPage({required this.onImageCaptured});

// // // // //   @override
// // // // //   _CameraPageState createState() => _CameraPageState();
// // // // // }

// // // // // class _CameraPageState extends State<CameraPage> with WidgetsBindingObserver {
// // // // //   CameraController? _cameraController;
// // // // //   List<CameraDescription>? _cameras;
// // // // //   bool _isInitialized = false;

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     WidgetsBinding.instance.addObserver(this);
// // // // //     _initializeCamera();
// // // // //   }

// // // // //   @override
// // // // //   void dispose() {
// // // // //     WidgetsBinding.instance.removeObserver(this);
// // // // //     _cameraController?.dispose();
// // // // //     super.dispose();
// // // // //   }

// // // // //   @override
// // // // //   void didChangeAppLifecycleState(AppLifecycleState state) {
// // // // //     if (state == AppLifecycleState.inactive ||
// // // // //         state == AppLifecycleState.paused) {
// // // // //       _cameraController?.dispose();
// // // // //       setState(() {
// // // // //         _isInitialized = false;
// // // // //       });
// // // // //     } else if (state == AppLifecycleState.resumed) {
// // // // //       if (!_isInitialized) {
// // // // //         _initializeCamera();
// // // // //       }
// // // // //     }
// // // // //   }

// // // // //   Future<void> _initializeCamera() async {
// // // // //     try {
// // // // //       _cameras = await availableCameras();
// // // // //       _cameraController = CameraController(
// // // // //         _cameras![0],
// // // // //         ResolutionPreset.high,
// // // // //       );
// // // // //       await _cameraController!.initialize();
// // // // //       setState(() {
// // // // //         _isInitialized = true;
// // // // //       });
// // // // //     } catch (e) {
// // // // //       print("Error initializing camera: $e");
// // // // //     }
// // // // //   }

// // // // //   Future<void> _takePicture() async {
// // // // //     try {
// // // // //       final image = await _cameraController!.takePicture();
// // // // //       print('Image path: ${image.path}'); // Log image path for debugging

// // // // //       // رفع الصورة إلى Supabase والحصول على رابط URL
// // // // //       final imageUrl = await uploadImageToSupabase(File(image.path));
// // // // //       if (imageUrl != null) {
// // // // //         print('Image uploaded to Supabase: $imageUrl');

// // // // //         // Send the image to Flask and get the prediction result
// // // // //         final result = await sendImageToFlask(File(image.path));
// // // // //         print(
// // // // //             'Prediction result: ${result["prediction"]}'); // Log prediction result

// // // // //         // Save the image path and prediction result to SharedPreferences
// // // // //         await _saveImagePathAndPrediction(image.path, result["prediction"]);

// // // // //         // تخزين رابط URL ونتيجة التنبؤ في Firestore
// // // // //         await storeImageUrlInFirestore(imageUrl, result["prediction"]);

// // // // //         // Navigate to Alerts page with prediction result and image URL
// // // // //         // Navigator.push(
// // // // //         //   context,
// // // // //         //   MaterialPageRoute(
// // // // //         //     builder: (context) => Alerts(
// // // // //         //         imageUrl: imageUrl, predictionResult: result["prediction"]),
// // // // //         //   ),
// // // // //         // );

// // // // //         // Trigger the callback passed to the widget
// // // // //         widget.onImageCaptured(imageUrl, result["prediction"]);
// // // // //       } else {
// // // // //         print('Failed to upload image to Supabase');
// // // // //       }
// // // // //     } catch (e) {
// // // // //       print("Error: $e");
// // // // //     }
// // // // //   }

// // // // //   Future<String?> uploadImageToSupabase(File imageFile) async {
// // // // //     try {
// // // // //       final fileName = imageFile.path.split('/').last;
// // // // //       final response = await Supabase.instance.client.storage
// // // // //           .from('user_images') // Replace with your bucket name
// // // // //           .uploadBinary('uploads/$fileName', await imageFile.readAsBytes());

// // // // //       if (response != null) {
// // // // //         // الحصول على رابط URL للصورة
// // // // //         final publicUrl = Supabase.instance.client.storage
// // // // //             .from('user_images')
// // // // //             .getPublicUrl('uploads/$fileName');
// // // // //         return publicUrl; // Return the public URL
// // // // //       } else {
// // // // //         print('Error: Failed to upload image');
// // // // //         return null;
// // // // //       }
// // // // //     } catch (e) {
// // // // //       print('Error uploading image to Supabase: $e');
// // // // //       return null;
// // // // //     }
// // // // //   }

// // // // //   Future<void> storeImageUrlInFirestore(
// // // // //       String imageUrl, String predictionResult) async {
// // // // //     try {
// // // // //       await FirebaseFirestore.instance.collection('History').add({
// // // // //         'imageUrl': imageUrl,
// // // // //         'predictionResult': predictionResult,
// // // // //         'status': 'In Progress',
// // // // //         'timestamp': Timestamp.now(),
// // // // //       });
// // // // //       print('Image URL and prediction result stored in Firestore');
// // // // //     } catch (e) {
// // // // //       print('Error storing data in Firestore: $e');
// // // // //     }
// // // // //   }

// // // // //   Future<void> _saveImagePathAndPrediction(
// // // // //       String imagePath, String predictionResult) async {
// // // // //     final prefs = await SharedPreferences.getInstance();
// // // // //     await prefs.setString('lastImagePath', imagePath);
// // // // //     await prefs.setString('lastPredictionResult', predictionResult);
// // // // //   }

// // // // //   Future<Map<String, dynamic>> sendImageToFlask(File imageFile) async {
// // // // //     var request = http.MultipartRequest(
// // // // //       'POST',
// // // // //       Uri.parse(
// // // // //           'http://192.168.1.30:5000/predict'), // Replace with your Flask server URL
// // // // //     ); //'http://10.0.2.2:5000/predict'), // Replace with your Flask server URL
// // // // //     request.files.add(
// // // // //       await http.MultipartFile.fromPath('image', imageFile.path),
// // // // //     );
// // // // //     var response = await request.send();
// // // // //     if (response.statusCode == 200) {
// // // // //       var responseData = await http.Response.fromStream(response);
// // // // //       print(
// // // // //           'Response body: ${responseData.body}'); // Log response for verification
// // // // //       var result = jsonDecode(responseData.body);
// // // // //       return {"prediction": result["prediction"]};
// // // // //     } else {
// // // // //       print('Error: ${response.statusCode}'); // Log error status code
// // // // //       return {"prediction": "Unknown"};
// // // // //     }
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text('Capture Image'),
// // // // //         backgroundColor: Colors.black,
// // // // //       ),
// // // // //       body: Stack(
// // // // //         children: [
// // // // //           _isInitialized
// // // // //               ? CameraPreview(_cameraController!)
// // // // //               : Center(child: CircularProgressIndicator()),
// // // // //           Positioned(
// // // // //             bottom: 30,
// // // // //             left: 0,
// // // // //             right: 0,
// // // // //             child: Center(
// // // // //               child: ElevatedButton(
// // // // //                 onPressed: _takePicture,
// // // // //                 style: ElevatedButton.styleFrom(
// // // // //                   backgroundColor: Colors
// // // // //                       .blue, // Updated parameter for button background color
// // // // //                   shape: CircleBorder(),
// // // // //                   padding: EdgeInsets.all(20),
// // // // //                 ),
// // // // //                 child: Icon(
// // // // //                   Icons.camera_alt,
// // // // //                   color: Colors.white,
// // // // //                   size: 40,
// // // // //                 ),
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:camera/camera.dart';
// // // // // import 'dart:io';
// // // // // import 'package:http/http.dart' as http;
// // // // // import 'dart:convert';
// // // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // // import 'package:supabase_flutter/supabase_flutter.dart'; // Ensure Supabase is imported correctly
// // // // // import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore
// // // // // import 'alerts.dart'; // Ensure the Alerts page is imported correctly

// // // // // class CameraPage extends StatefulWidget {
// // // // //   final Function(String imagePath, String predictionResult) onImageCaptured;

// // // // //   CameraPage({required this.onImageCaptured});

// // // // //   @override
// // // // //   _CameraPageState createState() => _CameraPageState();
// // // // // }

// // // // // class _CameraPageState extends State<CameraPage> with WidgetsBindingObserver {
// // // // //   CameraController? _cameraController;
// // // // //   List<CameraDescription>? _cameras;
// // // // //   bool _isInitialized = false;

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     WidgetsBinding.instance.addObserver(this);
// // // // //     _initializeCamera();
// // // // //   }

// // // // //   @override
// // // // //   void dispose() {
// // // // //     WidgetsBinding.instance.removeObserver(this);
// // // // //     _cameraController?.dispose();
// // // // //     super.dispose();
// // // // //   }

// // // // //   @override
// // // // //   void didChangeAppLifecycleState(AppLifecycleState state) {
// // // // //     if (state == AppLifecycleState.inactive || state == AppLifecycleState.paused) {
// // // // //       _cameraController?.dispose();
// // // // //       setState(() {
// // // // //         _isInitialized = false;
// // // // //       });
// // // // //     } else if (state == AppLifecycleState.resumed) {
// // // // //       if (!_isInitialized) {
// // // // //         _initializeCamera();
// // // // //       }
// // // // //     }
// // // // //   }

// // // // //   Future<void> _initializeCamera() async {
// // // // //     try {
// // // // //       _cameras = await availableCameras();
// // // // //       _cameraController = CameraController(
// // // // //         _cameras![0],
// // // // //         ResolutionPreset.high,
// // // // //       );
// // // // //       await _cameraController!.initialize();
// // // // //       setState(() {
// // // // //         _isInitialized = true;
// // // // //       });
// // // // //     } catch (e) {
// // // // //       print("Error initializing camera: $e");
// // // // //     }
// // // // //   }

// // // // //   Future<void> _takePicture() async {
// // // // //     try {
// // // // //       final image = await _cameraController!.takePicture();
// // // // //       print('Image path: ${image.path}'); // Log image path for debugging

// // // // //       // عرض رسالة عند التقاط الصورة
// // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // //         SnackBar(
// // // // //           content: const Text('Image captured successfully!'),
// // // // //           backgroundColor: Colors.green,
// // // // //         ),
// // // // //       );

// // // // //       // رفع الصورة إلى Supabase والحصول على رابط URL
// // // // //       final imageUrl = await uploadImageToSupabase(File(image.path));
// // // // //       if (imageUrl != null) {
// // // // //         print('Image uploaded to Supabase: $imageUrl');

// // // // //         // Send the image to Flask and get the prediction result
// // // // //         final result = await sendImageToFlask(File(image.path));
// // // // //         print('Prediction result: ${result["prediction"]}'); // Log prediction result

// // // // //         // Save the image path and prediction result to SharedPreferences
// // // // //         await _saveImagePathAndPrediction(image.path, result["prediction"]);

// // // // //         // تخزين رابط URL ونتيجة التنبؤ في Firestore
// // // // //         await storeImageUrlInFirestore(imageUrl, result["prediction"]);

// // // // //         // Trigger the callback passed to the widget
// // // // //         widget.onImageCaptured(imageUrl, result["prediction"]);
// // // // //       } else {
// // // // //         print('Failed to upload image to Supabase');
// // // // //       }
// // // // //     } catch (e) {
// // // // //       print("Error: $e");
// // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // //         SnackBar(
// // // // //           content: Text('Error capturing image: $e'),
// // // // //           backgroundColor: Colors.red,
// // // // //         ),
// // // // //       );
// // // // //     }
// // // // //   }

// // // // //   Future<String?> uploadImageToSupabase(File imageFile) async {
// // // // //     try {
// // // // //       final fileName = imageFile.path.split('/').last;
// // // // //       final response = await Supabase.instance.client.storage
// // // // //           .from('user_images') // Replace with your bucket name
// // // // //           .uploadBinary('uploads/$fileName', await imageFile.readAsBytes());

// // // // //       if (response != null) {
// // // // //         // الحصول على رابط URL للصورة
// // // // //         final publicUrl = Supabase.instance.client.storage
// // // // //             .from('user_images')
// // // // //             .getPublicUrl('uploads/$fileName');
// // // // //         return publicUrl; // Return the public URL
// // // // //       } else {
// // // // //         print('Error: Failed to upload image');
// // // // //         return null;
// // // // //       }
// // // // //     } catch (e) {
// // // // //       print('Error uploading image to Supabase: $e');
// // // // //       return null;
// // // // //     }
// // // // //   }

// // // // //   Future<void> storeImageUrlInFirestore(String imageUrl, String predictionResult) async {
// // // // //     try {
// // // // //       await FirebaseFirestore.instance.collection('History').add({
// // // // //         'imageUrl': imageUrl,
// // // // //         'predictionResult': predictionResult,
// // // // //         'status': 'In Progress',
// // // // //         'timestamp': Timestamp.now(),
// // // // //       });
// // // // //       print('Image URL and prediction result stored in Firestore');
// // // // //     } catch (e) {
// // // // //       print('Error storing data in Firestore: $e');
// // // // //     }
// // // // //   }

// // // // //   Future<void> _saveImagePathAndPrediction(String imagePath, String predictionResult) async {
// // // // //     final prefs = await SharedPreferences.getInstance();
// // // // //     await prefs.setString('lastImagePath', imagePath);
// // // // //     await prefs.setString('lastPredictionResult', predictionResult);
// // // // //   }

// // // // //   Future<Map<String, dynamic>> sendImageToFlask(File imageFile) async {
// // // // //     var request = http.MultipartRequest(
// // // // //       'POST',
// // // // //        Uri.parse('http://192.168.1.30:5000/predict'),
// // // // //       // Replace with your Flask server URL
// // // // //     );
// // // // //     request.files.add(
// // // // //       await http.MultipartFile.fromPath('image', imageFile.path),
// // // // //     );
// // // // //     var response = await request.send();
// // // // //     if (response.statusCode == 200) {
// // // // //       var responseData = await http.Response.fromStream(response);
// // // // //       print('Response body: ${responseData.body}'); // Log response for verification
// // // // //       var result = jsonDecode(responseData.body);
// // // // //       return {"prediction": result["prediction"]};
// // // // //     } else {
// // // // //       print('Error: ${response.statusCode}'); // Log error status code
// // // // //       return {"prediction": "Unknown"};
// // // // //     }
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text('Capture Image'),
// // // // //         backgroundColor: Colors.black,
// // // // //       ),
// // // // //       body: Stack(
// // // // //         children: [
// // // // //           _isInitialized
// // // // //               ? CameraPreview(_cameraController!)
// // // // //               : Center(child: CircularProgressIndicator()),
// // // // //           Positioned(
// // // // //             bottom: 30,
// // // // //             left: 0,
// // // // //             right: 0,
// // // // //             child: Center(
// // // // //               child: ElevatedButton(
// // // // //                 onPressed: _takePicture,
// // // // //                 style: ElevatedButton.styleFrom(
// // // // //                   backgroundColor: Colors.blue,
// // // // //                   shape: CircleBorder(),
// // // // //                   padding: EdgeInsets.all(20),
// // // // //                 ),
// // // // //                 child: Icon(
// // // // //                   Icons.camera_alt,
// // // // //                   color: Colors.white,
// // // // //                   size: 40,
// // // // //                 ),
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // import 'package:flutter/material.dart';
// // // import 'package:camera/camera.dart';
// // // import 'dart:io';
// // // import 'package:http/http.dart' as http;
// // // import 'dart:convert';
// // // import 'package:supabase_flutter/supabase_flutter.dart';
// // // import 'package:cloud_firestore/cloud_firestore.dart';

// // // class CameraPage extends StatefulWidget {
// // //   final Function(String imagePath, String predictionResult) onImageCaptured;
// // //   final String area;
// // //   final String camera;
// // //   final String areaUrl;

// // //   CameraPage({
// // //     required this.onImageCaptured,
// // //     required this.area,
// // //     required this.camera,
// // //     required this.areaUrl,
// // //   });

// // //   @override
// // //   _CameraPageState createState() => _CameraPageState();
// // // }

// // // class _CameraPageState extends State<CameraPage> {
// // //   CameraController? _cameraController;
// // //   bool _isInitialized = false;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _initializeCamera();
// // //   }

// // //   Future<void> _initializeCamera() async {
// // //     try {
// // //       final cameras = await availableCameras();
// // //       _cameraController = CameraController(
// // //         cameras[0],
// // //         ResolutionPreset.high,
// // //       );
// // //       await _cameraController!.initialize();
// // //       setState(() {
// // //         _isInitialized = true;
// // //       });
// // //     } catch (e) {
// // //       print("Error initializing camera: $e");
// // //     }
// // //   }

// // //   Future<void> _takePicture() async {
// // //     try {
// // //       final image = await _cameraController!.takePicture();
// // //       final imageUrl = await uploadImageToSupabase(File(image.path));

// // //       if (imageUrl != null) {
// // //         final prediction = await sendImageToFlask(File(image.path));
// // //         await _storeInFirestore(imageUrl, prediction);
// // //         widget.onImageCaptured(imageUrl, prediction);
// // //       }
// // //     } catch (e) {
// // //       print("Error capturing image: $e");
// // //     }
// // //   }

// // //   Future<String?> uploadImageToSupabase(File imageFile) async {
// // //     try {
// // //       final fileName = imageFile.path.split('/').last;
// // //       final response = await Supabase.instance.client.storage
// // //           .from('user_images')
// // //           .uploadBinary('uploads/$fileName', await imageFile.readAsBytes());

// // //       if (response != null) {
// // //         return Supabase.instance.client.storage
// // //             .from('user_images')
// // //             .getPublicUrl('uploads/$fileName');
// // //       }
// // //       return null;
// // //     } catch (e) {
// // //       print("Error uploading image: $e");
// // //       return null;
// // //     }
// // //   }

// // //   Future<String> sendImageToFlask(File imageFile) async {
// // //     final request = http.MultipartRequest(
// // //       'POST',
// // //       Uri.parse('http://192.168.1.30:5000/predict'),
// // //     );
// // //     request.files.add(await http.MultipartFile.fromPath('image', imageFile.path));
// // //     final response = await request.send();

// // //     if (response.statusCode == 200) {
// // //       final responseData = await http.Response.fromStream(response);
// // //       final result = jsonDecode(responseData.body);
// // //       return result['prediction'];
// // //     } else {
// // //       return 'Unknown';
// // //     }
// // //   }

// // //   Future<void> _storeInFirestore(String imageUrl, String predictionResult) async {
// // //     try {
// // //       await FirebaseFirestore.instance.collection('History').add({
// // //         'area': widget.area,
// // //         'camera': widget.camera,
// // //         'imageUrl': imageUrl,
// // //         'normalImageUrl': widget.areaUrl,
// // //         'predictionResult': predictionResult,
// // //         'status': 'In Progress',
// // //         'timestamp': Timestamp.now(),
// // //       });
// // //     } catch (e) {
// // //       print("Error storing in Firestore: $e");
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(title: Text('Capture Image')),
// // //       body: Stack(
// // //         children: [
// // //           _isInitialized
// // //               ? CameraPreview(_cameraController!)
// // //               : Center(child: CircularProgressIndicator()),
// // //           Positioned(
// // //             bottom: 30,
// // //             left: 0,
// // //             right: 0,
// // //             child: Center(
// // //               child: ElevatedButton(
// // //                 onPressed: _takePicture,
// // //                 child: Icon(Icons.camera_alt),
// // //               ),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:camera/camera.dart';
// // import 'dart:io';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';
// // import 'package:supabase_flutter/supabase_flutter.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';

// // class CameraPage extends StatefulWidget {
// //   final Function(String imagePath, String predictionResult) onImageCaptured;
// //   final String area;
// //   final String camera;
// //   final String areaUrl;

// //   CameraPage({
// //     required this.onImageCaptured,
// //     required this.area,
// //     required this.camera,
// //     required this.areaUrl,
// //   });

// //   @override
// //   _CameraPageState createState() => _CameraPageState();
// // }

// // class _CameraPageState extends State<CameraPage> {
// //   CameraController? _cameraController;
// //   bool _isInitialized = false;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _initializeCamera();
// //   }

// //   Future<void> _initializeCamera() async {
// //     try {
// //       final cameras = await availableCameras();
// //       _cameraController = CameraController(
// //         cameras[0],
// //         ResolutionPreset.high,
// //       );
// //       await _cameraController!.initialize();
// //       setState(() {
// //         _isInitialized = true;
// //       });
// //     } catch (e) {
// //       print("Error initializing camera: $e");
// //     }
// //   }

// //   Future<void> _takePicture() async {
// //     try {
// //       final image = await _cameraController!.takePicture();
// //       final imageUrl = await uploadImageToSupabase(File(image.path));

// //       if (imageUrl != null) {
// //         final prediction = await sendImageToFlask(File(image.path));
// //         await _storeInFirestore(imageUrl, prediction);
// //         widget.onImageCaptured(imageUrl, prediction);
// //       }
// //     } catch (e) {
// //       print("Error capturing image: $e");
// //     }
// //   }

// //   Future<String?> uploadImageToSupabase(File imageFile) async {
// //     try {
// //       final fileName = imageFile.path.split('/').last;
// //       final response = await Supabase.instance.client.storage
// //           .from('user_images')
// //           .uploadBinary('uploads/$fileName', await imageFile.readAsBytes());

// //       if (response != null) {
// //         return Supabase.instance.client.storage
// //             .from('user_images')
// //             .getPublicUrl('uploads/$fileName');
// //       }
// //       return null;
// //     } catch (e) {
// //       print("Error uploading image: $e");
// //       return null;
// //     }
// //   }

// //   Future<String> sendImageToFlask(File imageFile) async {
// //     final request = http.MultipartRequest(
// //       'POST',
// //       Uri.parse('http://192.168.1.30:5000/predict'),
// //     );
// //     request.files.add(await http.MultipartFile.fromPath('image', imageFile.path));
// //     final response = await request.send();

// //     if (response.statusCode == 200) {
// //       final responseData = await http.Response.fromStream(response);
// //       final result = jsonDecode(responseData.body);
// //       return result['prediction'];
// //     } else {
// //       return 'Unknown';
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

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text('Capture Image')),
// //       body: Stack(
// //         children: [
// //           _isInitialized
// //               ? CameraPreview(_cameraController!)
// //               : Center(child: CircularProgressIndicator()),
// //           Positioned(
// //             bottom: 30,
// //             left: 0,
// //             right: 0,
// //             child: Center(
// //               child: ElevatedButton(
// //                 onPressed: _takePicture,
// //                 child: Icon(Icons.camera_alt),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'alerts.dart';

// class CameraPage extends StatefulWidget {
//   final String area;
//   final String camera;
//   final String areaUrl;

//   CameraPage({
//     required this.area,
//     required this.camera,
//     required this.areaUrl,
//   });

//   @override
//   _CameraPageState createState() => _CameraPageState();
// }

// class _CameraPageState extends State<CameraPage> {
//   CameraController? _cameraController;
//   bool _isInitialized = false;
//   int _currentIndex = 0; // لتحديد الصفحة الحالية

//   @override
//   void initState() {
//     super.initState();
//     _initializeCamera();
//   }

//   Future<void> _initializeCamera() async {
//     try {
//       final cameras = await availableCameras();
//       _cameraController = CameraController(
//         cameras[0],
//         ResolutionPreset.high,
//       );
//       await _cameraController!.initialize();
//       setState(() {
//         _isInitialized = true;
//       });
//     } catch (e) {
//       print("Error initializing camera: $e");
//     }
//   }

//   Future<void> _takePicture() async {
//     try {
//       final image = await _cameraController!.takePicture();

//       // عرض رسالة نجاح باللون الأخضر
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text(
//             'Capture Successfully!',
//             style: TextStyle(color: Colors.white),
//           ),
//           backgroundColor: Colors.green,
//           duration: Duration(seconds: 2),
//         ),
//       );

//       final imageUrl = await uploadImageToSupabase(File(image.path));

//       if (imageUrl != null) {
//         final prediction = await sendImageToFlask(File(image.path));
//         await _storeInFirestore(imageUrl, prediction);

//         // تحديث الصفحة إلى Alerts مع البيانات
//         setState(() {
//           _currentIndex = 1; // الانتقال إلى صفحة التنبيهات
//         });
//       }
//     } catch (e) {
//       print("Error capturing image: $e");
//     }
//   }

//   Future<String?> uploadImageToSupabase(File imageFile) async {
//     try {
//       final fileName = imageFile.path.split('/').last;
//       final response = await Supabase.instance.client.storage
//           .from('user_images')
//           .uploadBinary('uploads/$fileName', await imageFile.readAsBytes());

//       if (response != null) {
//         return Supabase.instance.client.storage
//             .from('user_images')
//             .getPublicUrl('uploads/$fileName');
//       }
//       return null;
//     } catch (e) {
//       print("Error uploading image: $e");
//       return null;
//     }
//   }

//   Future<String> sendImageToFlask(File imageFile) async {
//     final request = http.MultipartRequest(
//       'POST',
//       Uri.parse('http://192.168.1.30:5000/predict'),
//     );
//     request.files.add(await http.MultipartFile.fromPath('image', imageFile.path));
//     final response = await request.send();

//     if (response.statusCode == 200) {
//       final responseData = await http.Response.fromStream(response);
//       final result = jsonDecode(responseData.body);
//       return result['prediction'];
//     } else {
//       return 'Unknown';
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

//   @override
//   Widget build(BuildContext context) {
//     List<Widget> pages = [
//       Stack(
//         children: [
//           _isInitialized
//               ? CameraPreview(_cameraController!)
//               : const Center(child: CircularProgressIndicator()),
//           Positioned(
//             bottom: 30,
//             left: 0,
//             right: 0,
//             child: Center(
//               child: ElevatedButton(
//                 onPressed: _takePicture,
//                 style: ElevatedButton.styleFrom(
//                   shape: const CircleBorder(),
//                   backgroundColor: Colors.blue,
//                   padding: const EdgeInsets.all(20),
//                 ),
//                 child: const Icon(
//                   Icons.camera_alt,
//                   size: 50,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       Alerts(
//         imageUrl: "", // قيمة افتراضية سيتم التحديث عليها عند التقاط الصورة
//         predictionResult: "", // قيمة افتراضية سيتم التحديث عليها عند التقاط الصورة
//       ),
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Camera Page'),
//       ),
//       body: pages[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.camera_alt),
//             label: 'Camera',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.warning),
//             label: 'Alerts',
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class CameraPage extends StatefulWidget {
//   final String area;
//   final String camera;
//   final String areaUrl;

//   CameraPage({
//     required this.area,
//     required this.camera,
//     required this.areaUrl,
//   });

//   @override
//   _CameraPageState createState() => _CameraPageState();
// }

// class _CameraPageState extends State<CameraPage> {
//   CameraController? _cameraController;
//   bool _isInitialized = false;

//   @override
//   void initState() {
//     super.initState();
//     _initializeCamera();
//   }

//   Future<void> _initializeCamera() async {
//     try {
//       final cameras = await availableCameras();
//       _cameraController = CameraController(
//         cameras[0],
//         ResolutionPreset.high,
//       );
//       await _cameraController!.initialize();
//       setState(() {
//         _isInitialized = true;
//       });
//     } catch (e) {
//       print("Error initializing camera: $e");
//     }
//   }

//   Future<void> _takePicture() async {
//     try {
//       final image = await _cameraController!.takePicture();

//       // عرض رسالة نجاح باللون الأخضر
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text(
//             'Capture Successfully!',
//             style: TextStyle(color: Colors.white),
//           ),
//           backgroundColor: Colors.green,
//           duration: Duration(seconds: 2),
//         ),
//       );

//       final imageUrl = await uploadImageToSupabase(File(image.path));

//       if (imageUrl != null) {
//         final prediction = await sendImageToFlask(File(image.path));
//         await _storeInFirestore(imageUrl, prediction);

//         // العودة إلى MainScreen مع البيانات الملتقطة
//         Navigator.pop(context, {
//           'imageUrl': imageUrl,
//           'predictionResult': prediction,
//         });
//       }
//     } catch (e) {
//       print("Error capturing image: $e");
//     }
//   }

//   Future<String?> uploadImageToSupabase(File imageFile) async {
//     try {
//       final fileName = imageFile.path.split('/').last;
//       final response = await Supabase.instance.client.storage
//           .from('user_images')
//           .uploadBinary('uploads/$fileName', await imageFile.readAsBytes());

//       if (response != null) {
//         return Supabase.instance.client.storage
//             .from('user_images')
//             .getPublicUrl('uploads/$fileName');
//       }
//       return null;
//     } catch (e) {
//       print("Error uploading image: $e");
//       return null;
//     }
//   }

//   Future<String> sendImageToFlask(File imageFile) async {
//     final request = http.MultipartRequest(
//       'POST',
//       Uri.parse('http://192.168.1.30:5000/predict'),
//     );
//     request.files.add(await http.MultipartFile.fromPath('image', imageFile.path));
//     final response = await request.send();

//     if (response.statusCode == 200) {
//       final responseData = await http.Response.fromStream(response);
//       final result = jsonDecode(responseData.body);
//       return result['prediction'];
//     } else {
//       return 'Unknown';
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

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Capture Image')),
//       body: Stack(
//         children: [
//           _isInitialized
//               ? CameraPreview(_cameraController!)
//               : const Center(child: CircularProgressIndicator()),
//           Positioned(
//             bottom: 30,
//             left: 0,
//             right: 0,
//             child: Center(
//               child: ElevatedButton(
//                 onPressed: _takePicture,
//                 style: ElevatedButton.styleFrom(
//                   shape: const CircleBorder(),
//                   backgroundColor: Colors.blue,
//                   padding: const EdgeInsets.all(20),
//                 ),
//                 child: const Icon(
//                   Icons.camera_alt,
//                   size: 50, // زيادة حجم الأيقونة
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class CameraPage extends StatefulWidget {
//   final String area;
//   final String camera;
//   final String areaUrl;
//   final Function(String imagePath, String predictionResult) onImageCaptured;

//   CameraPage({
//     required this.area,
//     required this.camera,
//     required this.areaUrl,
//     required this.onImageCaptured,
//   });

//   @override
//   _CameraPageState createState() => _CameraPageState();
// }

// class _CameraPageState extends State<CameraPage> {
//   CameraController? _cameraController;
//   bool _isInitialized = false;

//   @override
//   void initState() {
//     super.initState();
//     _initializeCamera();
//   }

//   Future<void> _initializeCamera() async {
//     try {
//       final cameras = await availableCameras();
//       _cameraController = CameraController(
//         cameras[0],
//         ResolutionPreset.high,
//       );
//       await _cameraController!.initialize();
//       setState(() {
//         _isInitialized = true;
//       });
//     } catch (e) {
//       print("Error initializing camera: $e");
//     }
//   }

//   Future<void> _takePicture() async {
//     try {
//       final image = await _cameraController!.takePicture();

//       // عرض رسالة نجاح باللون الأخضر
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text(
//             'Capture Successfully!',
//             style: TextStyle(color: Colors.white),
//           ),
//           backgroundColor: Colors.green,
//           duration: Duration(seconds: 2),
//         ),
//       );

//       final imageUrl = await uploadImageToSupabase(File(image.path));

//       if (imageUrl != null) {
//         final prediction = await sendImageToFlask(File(image.path));
//         await _storeInFirestore(imageUrl, prediction);

//         // استدعاء الدالة مع البيانات التي تم الحصول عليها
//         widget.onImageCaptured(imageUrl, prediction);

//         // العودة إلى الشاشة السابقة
//         Navigator.pop(context);
//       }
//     } catch (e) {
//       print("Error capturing image: $e");
//     }
//   }

//   Future<String?> uploadImageToSupabase(File imageFile) async {
//     try {
//       final fileName = imageFile.path.split('/').last;
//       final response = await Supabase.instance.client.storage
//           .from('user_images')
//           .uploadBinary('uploads/$fileName', await imageFile.readAsBytes());

//       if (response != null) {
//         return Supabase.instance.client.storage
//             .from('user_images')
//             .getPublicUrl('uploads/$fileName');
//       }
//       return null;
//     } catch (e) {
//       print("Error uploading image: $e");
//       return null;
//     }
//   }

//   Future<String> sendImageToFlask(File imageFile) async {
//     final request = http.MultipartRequest(
//       'POST',
//       Uri.parse('http://192.168.1.30:5000/predict'),
//     );
//     request.files.add(await http.MultipartFile.fromPath('image', imageFile.path));
//     final response = await request.send();

//     if (response.statusCode == 200) {
//       final responseData = await http.Response.fromStream(response);
//       final result = jsonDecode(responseData.body);
//       return result['prediction'];
//     } else {
//       return 'Unknown';
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

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Capture Image')),
//       body: Stack(
//         children: [
//           _isInitialized
//               ? CameraPreview(_cameraController!)
//               : const Center(child: CircularProgressIndicator()),
//           Positioned(
//             bottom: 30,
//             left: 0,
//             right: 0,
//             child: Center(
//               child: ElevatedButton(
//                 onPressed: _takePicture,
//                 style: ElevatedButton.styleFrom(
//                   shape: const CircleBorder(),
//                   backgroundColor: Colors.blue,
//                   padding: const EdgeInsets.all(20),
//                 ),
//                 child: const Icon(
//                   Icons.camera_alt,
//                   size: 50, // زيادة حجم الأيقونة
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CameraPage extends StatefulWidget {
  final String area;
  final String camera;
  final String areaUrl;
  final Function(String imagePath, String predictionResult) onImageCaptured;

  const CameraPage({super.key, 
    required this.area,
    required this.camera,
    required this.areaUrl,
    required this.onImageCaptured,
  });

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraController? _cameraController;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    try {
      final cameras = await availableCameras();
      _cameraController = CameraController(
        cameras[0],
        ResolutionPreset.high,
      );
      await _cameraController!.initialize();
      setState(() {
        _isInitialized = true;
      });
    } catch (e) {
      print("Error initializing camera: $e");
    }
  }

  Future<void> _takePicture() async {
    try {
      final image = await _cameraController!.takePicture();

      // عرض رسالة نجاح باللون الأخضر
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Capture Successfully!',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );

      final imageUrl = await uploadImageToSupabase(File(image.path));

      if (imageUrl != null) {
        final prediction = await sendImageToFlask(File(image.path));

        if (prediction == 'Unknown' || prediction.isEmpty) {
          // إذا كانت النتيجة Unknown أو فارغة، عرض رسالة
          _showNoGasDialog();
        } else {
          // حفظ في Firestore إذا كانت النتيجة صحيحة
          await _storeInFirestore(imageUrl, prediction);

          // استدعاء الدالة مع البيانات التي تم الحصول عليها
          widget.onImageCaptured(imageUrl, prediction);

          // العودة إلى الشاشة السابقة
          Navigator.pop(context);
        }
      }
    } catch (e) {
      print("Error capturing image: $e");
    }
  }

  Future<String?> uploadImageToSupabase(File imageFile) async {
    try {
      final fileName = imageFile.path.split('/').last;
      final response = await Supabase.instance.client.storage
          .from('user_images')
          .uploadBinary('uploads/$fileName', await imageFile.readAsBytes());

      return Supabase.instance.client.storage
          .from('user_images')
          .getPublicUrl('uploads/$fileName');
          return null;
    } catch (e) {
      print("Error uploading image: $e");
      return null;
    }
  }

  Future<String> sendImageToFlask(File imageFile) async {
    final request = http.MultipartRequest(
      'POST',
     //Uri.parse('http://192.168.1.10:5000/predict'),
     Uri.parse('http://172.20.10.2:5000/predict'),
    );
    request.files
        .add(await http.MultipartFile.fromPath('image', imageFile.path));
    final response = await request.send();

    if (response.statusCode == 200) {
      final responseData = await http.Response.fromStream(response);
      final result = jsonDecode(responseData.body);
      return result['prediction'];
    } else {
      return 'Unknown';
    }
  }

  Future<void> _storeInFirestore(
      String imageUrl, String predictionResult) async {
    try {
      await FirebaseFirestore.instance.collection('History').add({
        'area': widget.area,
        'camera': widget.camera,
        'imageUrl': imageUrl,
        'normalImageUrl': widget.areaUrl,
        'predictionResult': predictionResult,
        'status': 'In Progress',
        'timestamp': Timestamp.now(),
        
      });
    } catch (e) {
      print("Error storing in Firestore: $e");
    }
  }

  void _showNoGasDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'No Gas Detected',
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        content: const Text(
          'The system did not detect any gas or smoke. You can take another picture or close this message.',
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // إغلاق التنبيه والعودة للكاميرا
            },
            child: const Text(
              'OK',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Capture Image')),
      body: Stack(
        children: [
          _isInitialized
              ? CameraPreview(_cameraController!)
              : const Center(child: CircularProgressIndicator()),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: _takePicture,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.all(20),
                ),
                child: const Icon(
                  Icons.camera_alt,
                  size: 50, // زيادة حجم الأيقونة
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
