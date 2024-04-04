import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('About'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This application was created by',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              '  Mahmoud Badawy.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.purple),
            ),
            SizedBox(height: 10),
            Text(
              '© All rights reserved.',
              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
