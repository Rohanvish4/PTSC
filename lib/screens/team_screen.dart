import 'package:flutter/material.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Team'),
      ),
      body: // Placeholder for team member list (horizontally scrollable or grid)
          const Center(
        child: Text('Team Members will be displayed here.'),
      ),
    );
  }
}
