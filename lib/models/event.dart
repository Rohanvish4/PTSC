class Event {
  final String id;
  final String name;
  final String description;
  final DateTime date;
  final String? image;

  Event({
    required this.id,
    required this.name,
    required this.description,
    required this.date,
    this.image,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      date: DateTime.parse(json['date'] as String),
      image: json['image'] as String?,
    );
  }
}
