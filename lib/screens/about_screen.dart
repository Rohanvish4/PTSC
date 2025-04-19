import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> clubInfo = [
      {
        'title': 'Our Mission',
        'subtitle':
            'To foster a vibrant community of students by providing opportunities for growth, learning, and collaboration.',
      },
      {
        'title': 'Our Vision',
        'subtitle':
            'To be the leading student organization, recognized for its positive impact on campus and beyond.',
      },
      {
        'title': 'A Brief History',
        'subtitle':
            'Founded in 2020, our club has grown from a small group of students with a shared passion to a thriving community of over 100 members. We have organized numerous successful events, workshops, and projects, contributing to the academic and social life of the campus.',
      },
      {
        'title': 'Our Values',
        'subtitle':
            'We are committed to excellence, inclusivity, innovation, and community engagement.',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: ListView.builder(
        itemCount: clubInfo.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(
                clubInfo[index]['title']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(clubInfo[index]['subtitle']!),
            ),
          );
        },
      ),
    );
  }
}