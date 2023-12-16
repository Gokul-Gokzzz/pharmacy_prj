import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/logo back.jpg'),fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildContactInfo('Email', 'support@GkPharma.com'),
              _buildContactInfo('Phone', '+91 9065559384'),
              _buildContactForm(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.black),
          children: [
            TextSpan(
              text: '$label: ',
              style: TextStyle(fontWeight: FontWeight.bold),
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
      child: Text('Send Us a Message'),
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
          title: Text('Contact Form'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Your Name'),
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Your Email'),
              ),
              TextField(
                controller: messageController,
                decoration: InputDecoration(labelText: 'Your Message'),
                maxLines: 3,
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                
                print('Name: ${nameController.text}');
                print('Email: ${emailController.text}');
                print('Message: ${messageController.text}');

                Navigator.of(context).pop(); 
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }
}


