// Placeholder functions for data fetching from Firebase

Future<List<Map<String, String>>> fetchEvents() async {
  // Return a list of dummy events
  return [
    {
      'title': 'Workshop on Flutter Development',
      'date': '2024-03-15',
      'description': 'Learn the basics of Flutter app development.',
    },
    {'title': 'Networking Event', 'date': '2024-03-22', 'description': 'Connect with fellow students and industry professionals.'},
    {'title': 'Coding Challenge', 'date': '2024-04-05', 'description': 'Test your coding skills with a fun challenge.'},
  ];
}


Future<List<Map<String, String>>> fetchTeamMembers() async {
  // Return a list of dummy team members
  return [
    {'name': 'John Doe', 'role': 'President', 'image': 'https://example.com/john.jpg'},
    {'name': 'Jane Smith', 'role': 'Vice President', 'image': 'https://example.com/jane.jpg'},
    {'name': 'Peter Jones', 'role': 'Treasurer', 'image': 'https://example.com/peter.jpg'},
  ];
}







Future<List<dynamic>> fetchTestimonials() async {
  // TODO: Implement fetching testimonials from Firestore
  return []; // Return empty list for now
}

Future<List<Map<String, String>>> fetchStudyResources() async {
  // Return a list of dummy study resources
  return [
    {'title': 'Flutter Basics', 'description': 'A guide to the fundamentals of Flutter development.'},
    {'title': 'Dart Programming', 'description': 'Learn the Dart programming language from scratch.'},
    {'title': 'Mobile App Design Principles', 'description': 'Understand the principles of designing user-friendly mobile apps.'},
  ];
}
