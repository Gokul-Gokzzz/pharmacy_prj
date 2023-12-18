import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/logo back.jpg'),fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSectionTitle('Information We Collect'),
                _buildParagraph(
                  'We collect personal information that you provide directly to us, such as your name, address, email address, and health-related data when you use our medical app.',
                ),
                _buildParagraph(
                  'Additionally, we may collect information about your usage of the app, including but not limited to your interactions, preferences, and device information.',
                ),
                SizedBox(height: 20),
        
                _buildSectionTitle('How We Use Your Information'),
                _buildParagraph(
                  'We use the information we collect to provide and improve our medical app, deliver personalized content, send notifications, respond to user inquiries, and fulfill legal or regulatory requirements.',
                ),
                SizedBox(height: 20),
        
                _buildSectionTitle('Data Security'),
                _buildParagraph(
                  'We take reasonable measures to protect your personal information from unauthorized access or disclosure. However, no method of transmission over the internet or electronic storage is 100% secure.',
                ),
                SizedBox(height: 20),
        
                _buildSectionTitle('Third-Party Services'),
                _buildParagraph(
                  'Our app may contain links to third-party websites or services that we do not control. We are not responsible for the privacy practices or content of these third-party sites.',
                ),
                SizedBox(height: 20),
        
                _buildSectionTitle('Updates to this Privacy Policy'),
                _buildParagraph(
                  'We may update our privacy policy to reflect changes to our information practices. We encourage you to review this page periodically for the latest information on our privacy practices.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}



