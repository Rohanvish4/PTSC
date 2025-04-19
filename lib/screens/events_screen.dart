import 'package:flutter/material.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Events'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Upcoming Events Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Upcoming Events',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            // Placeholder for upcoming events list
            const Center(
              child: Text('Upcoming events will be displayed here.'),
            ),
            const SizedBox(height: 24),
            // Past Events Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Past Events',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            // Placeholder for past events list
            const Center(
              child: Text('Past events will be displayed here.'),
            ),
          ],
        ),
      ),
    );
  }
}
