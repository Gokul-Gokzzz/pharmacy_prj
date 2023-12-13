import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/logo back.jpg'),fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo1-removebg-preview.png',
                height: 100,
                width: 100,
              ),
              SizedBox(height: 20),
        
              Text(
                '𝐆𝐊 𝐏𝐇𝐀𝐑𝐌𝐀',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Empowering Health and Wellness',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
        
             
              Text(
                'Our Mission',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'To provide accessible and quality healthcare solutions to everyone, everywhere.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
        
             
              Text(
                'Key Features',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFeature('Feature 1: Health Records Management'),
                  _buildFeature('Feature 2: Medication Reminders'),
                  _buildFeature('Feature 3: Telemedicine Services'),
          
                ],
              ),
              SizedBox(height: 20),
        
         
              Text(
                'About Us',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '𝐆𝐊 𝐏𝐇𝐀𝐑𝐌𝐀 is developed by 𝐆𝐤 𝐢𝐧𝐧𝐨𝐯𝐚𝐭𝐢𝐯𝐞𝐬 Company, a dedicated team passionate about revolutionizing healthcare through innovative technology.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeature(String featureText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(
            Icons.check_circle,
            color: Colors.green,
          ),
          SizedBox(width: 8),
          Text(featureText),
        ],
      ),
    );
  }
}
