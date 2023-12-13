import 'package:flutter/material.dart';

class TermsAndCondition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/logo back.jpg"),fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              const Text(
                '''
              Welcome to 𝐆𝐊 𝐏𝐇𝐀𝐑𝐌𝐀!
      
              By using our app, you agree to abide by the following terms and conditions. Please read them carefully before using the app.
      
              1. Use of the App:
              - 𝐆𝐊 𝐏𝐇𝐀𝐑𝐌𝐀 is designed to [describe the purpose and functionality of your app].
      
              2. User Responsibilities:
              - Users are responsible for [describe any responsibilities users have when using the app].
      
              3. Privacy and Security:
              - 𝐆𝐊 𝐏𝐇𝐀𝐑𝐌𝐀 takes user privacy seriously. [Describe your privacy policy here].
      
              4. Prohibited Activities:
              - Users are prohibited from [list any activities that are not allowed on your app].
      
              5. Termination:
              - 𝐆𝐊 𝐏𝐇𝐀𝐑𝐌𝐀 reserves the right to terminate user accounts for violations of these terms.
      
              6. Changes to Terms:
              - 𝐆𝐊 𝐏𝐇𝐀𝐑𝐌𝐀 may update these terms and conditions at any time. Users will be notified of changes.
      
              If you have any questions or concerns about these terms and conditions, please contact us at [contact@GkPharma.com].
      
              Thank you for using 𝐆𝐊 𝐏𝐇𝐀𝐑𝐌𝐀!
              ''',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

