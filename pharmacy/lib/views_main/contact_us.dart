import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildContactInfo('Email', 'support@GkPharma.com'),
            _buildContactInfo('Phone', '+91 9065559384'),
            _buildContactForm(context),
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(color: Colors.black),
          children: [
            TextSpan(
              text: '$label: ',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: value),
          ],
        ),
      ),
    );
  }

  Widget _buildContactForm(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _showContactFormDialog(context);
      },
      child: const Text('Send Us a Message'),
    );
  }

  Future<void> _showContactFormDialog(BuildContext context) async {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController messageController = TextEditingController();

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Contact Form'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Your Name'),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Your Email'),
              ),
              TextField(
                controller: messageController,
                decoration: const InputDecoration(labelText: 'Your Message'),
                maxLines: 3,
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                
           

                Navigator.of(context).pop(); 
              },
              child: const Text('Submit'),
            ),
          ],
        );
      },
    );
  }
}


