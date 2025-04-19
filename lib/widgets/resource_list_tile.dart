import 'package:flutter/material.dart';

class ResourceListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const ResourceListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: onTap,
    );
  }
}
