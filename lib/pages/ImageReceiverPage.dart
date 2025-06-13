


import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ImageReceiverPage extends StatefulWidget {
  @override
  _ImageReceiverPageState createState() => _ImageReceiverPageState();
}

class _ImageReceiverPageState extends State<ImageReceiverPage> {
  String? _prediction;
  Uint8List? _imageBytes;

  Future<void> _fetchImage() async {
    try {
      var url = Uri.parse('http://172.20.10.2:5000/upload-image'); // عنوان السيرفر الخاص بك
      var request = http.MultipartRequest('POST', url)
        ..files.add(await http.MultipartFile.fromPath('image', 'C:\\Users\\saraa\\Desktop\\flask_server\\uploads'));



      var response = await request.send();

      if (response.statusCode == 200) {
        var data = await response.stream.bytesToString();
        var jsonResponse = jsonDecode(data);

        setState(() {
          _prediction = jsonResponse['result']['prediction'];
          _imageBytes = base64Decode(jsonResponse['image']);
        });
      } else {
        print('Failed to fetch image');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchImage();  // جلب الصورة عند تحميل الصفحة
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Received Image')),
      body: Center(
        child: _imageBytes == null
            ? CircularProgressIndicator()  // عرض مؤشر التحميل إذا كانت الصورة غير موجودة بعد
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.memory(_imageBytes!),  // عرض الصورة بعد تحميلها
                  Text(_prediction ?? 'No prediction available', style: TextStyle(fontSize: 20)),  // عرض النتيجة
                ],
              ),
      ),
    );
  }
}