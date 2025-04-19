import 'package:flutter/material.dart';
import '../services/data_fetch.dart';

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
            FutureBuilder<List<dynamic>>(
              future: fetchEvents(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                  final events = snapshot.data!;
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: events.length,
                    itemBuilder: (context, index) {
                      final event = events[index];
                      return ListTile(
                        title: Text(event['title'] ?? 'No Title'),
                        subtitle: Text(event['date'] ?? 'No Date'),
                      );
                    },
                  );
                } else {
                  return const Center(
                    child: Text('No upcoming events found.'),
                  );
                }
              },
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
