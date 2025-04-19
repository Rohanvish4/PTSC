import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Club Logo (Placeholder)
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(Icons.group),
            ),
            const SizedBox(height: 16),
            // Club Name and Tagline
            const Text(
              'Club Name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Club Tagline',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 24),
            // Vision and Mission
            const Text(
              'Our vision is to... Our mission is to...',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            // Join Us Button
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to registration page
              },
              child: const Text('Join Us'),
            ),
            // Optional: Event Countdown (Placeholder)
            // const SizedBox(height: 24),
            // const Text(
            //   'Next Event in: 00d 00h 00m 00s',
            // ),
          ],
        ),
      ),
    );
  }
}
