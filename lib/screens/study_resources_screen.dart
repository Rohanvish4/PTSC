import 'package:flutter/material.dart';

class StudyResourcesScreen extends StatelessWidget {
  const StudyResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Study Resources'),
      ),
      body: ListView.builder(
        itemCount: 5, // Placeholder: Number of resources
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Resource ${index + 1}'),
            subtitle: const Text('Short description or type of resource'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // TODO: Implement logic to open/download resource
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Opening Resource ${index + 1}...')),
              );
            },
          );
        },
      ),
    );
  }
}