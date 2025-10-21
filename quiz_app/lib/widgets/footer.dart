import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: const [
          Divider(color: Colors.white24, height: 1),
          SizedBox(height: 15),
          Text(
            '© 2025 ClimelInc. All rights reserved.',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(height: 10),
          Text(
            'Made with Flutter 💙',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          SizedBox(height: 10),
          Text(
            'Disclaimer: This portfolio is for personal and illustrative purposes only. '
            'Information presented does not represent any official affiliation or endorsement.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 11, color: Colors.grey),
          ),
    
        ],
      ),
    );
  }
}