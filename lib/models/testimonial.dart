class Testimonial {
  final String id;
  final String memberName;
  final String quote;
  final String? photo;

  Testimonial({
    required this.id,
    required this.memberName,
    required this.quote,
    this.photo,
  });

  factory Testimonial.fromJson(Map<String, dynamic> json) {
    return Testimonial(
      id: json['id'] as String,
      memberName: json['memberName'] as String,
      quote: json['quote'] as String,
      photo: json['photo'] as String?,
    );
  }
}
