class TeamMember {
  final String id;
  final String name;
  final String role;
  final String bio;
  final String? photo;

  TeamMember({
    required this.id,
    required this.name,
    required this.role,
    required this.bio,
    this.photo,
  });

  factory TeamMember.fromJson(Map<String, dynamic> json) {
    return TeamMember(
      id: json['id'] as String,
      name: json['name'] as String,
      role: json['role'] as String,
      bio: json['bio'] as String,
      photo: json['photo'] as String?,
    );
  }
}
