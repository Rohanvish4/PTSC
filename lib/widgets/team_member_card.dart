import 'package:flutter/material.dart';
import '../models/team_member.dart';

class TeamMemberCard extends StatelessWidget {
  final TeamMember member;

  const TeamMemberCard({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            member.photo != null
                ? CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(member.photo!),
                  )
                : const CircleAvatar(
                    radius: 40,
                    child: Icon(Icons.person, size: 40),
                  ),
            const SizedBox(height: 8),
            Text(
              member.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(member.role),
            const SizedBox(height: 8),
            Text(
              member.bio,
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
