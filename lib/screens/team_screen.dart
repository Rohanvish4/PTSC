import 'package:flutter/material.dart';
import '../services/data_fetch.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  late Future<List<dynamic>> _teamMembersFuture;

  @override
  void initState() {
    super.initState();
    _teamMembersFuture = fetchTeamMembers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Team'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: _teamMembersFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final teamMembers = snapshot.data!;
            return ListView.builder(
              itemCount: teamMembers.length,
              itemBuilder: (context, index) {
                final member = teamMembers[index];
                return ListTile(
                  title: Text(member['name'] ?? 'No Name'),
                  subtitle: Text(member['role'] ?? 'No Role'),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
