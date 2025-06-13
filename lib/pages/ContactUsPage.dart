import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  void _launchMap() async {
  
  }

  void _makeCall() async {
// رقم الهاتف
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: Column(
        children: [
          // الجزء العلوي الأزرق
          Container(
            width: double.infinity,
            color: Colors.blueAccent,
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: const [
                Icon(Icons.mail_outline, color: Colors.white, size: 60),
                SizedBox(height: 10),
                Text(
                  'Drop us a line',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // الجزء السفلي مع التفاصيل
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                children: [
                  // العنوان
                  ListTile(
                    leading: const Icon(Icons.location_on, color: Colors.red),
                    title: const Text(
                      '123 King Abdulaziz Road\nJeddah-Makkah, Saudi Arabia, 21577',
                      style: TextStyle(fontSize: 16),
                    ),
                    subtitle: GestureDetector(
                      onTap: _launchMap,
                      child: const Text(
                        "",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  const Divider(),

                  // الهاتف
                  ListTile(
                    leading: const Icon(Icons.phone, color: Colors.green),
                    title: GestureDetector(
                      onTap: _makeCall,
                      child: const Text(
                        '056 788 6058',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  const Divider(),

                  // أوقات العمل
                  ListTile(
                    leading: const Icon(Icons.access_time, color: Colors.orange),
                    title: const Text(
                      'Sunday - Thursday \n9am - 5pm',
                      style: TextStyle(fontSize: 16),
                    ),
                    subtitle: const Text(
                      'Friday -  Saturday\n9am - 12pm',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
