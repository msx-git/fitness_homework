import 'package:equatable/equatable.dart';

class Trainer extends Equatable {
  final String fullName;
  final String expertise;
  final int experience;
  final double rating;
  final String phoneNumber;
  final int completed;
  final int activeClients;
  final String imageUrl;

  const Trainer({
    required this.fullName,
    required this.expertise,
    required this.experience,
    required this.rating,
    required this.phoneNumber,
    required this.completed,
    required this.activeClients,
    required this.imageUrl,
  });

  @override
  List<Object> get props => [
        fullName,
        expertise,
        experience,
        rating,
        phoneNumber,
        completed,
        activeClients,
        imageUrl,
      ];

  @override
  String toString() {
    return 'Trainer{fullName: $fullName, expertise: $expertise, experience: $experience, rating: $rating, phoneNumber: $phoneNumber, completed: $completed, activeClients: $activeClients, imageUrl: $imageUrl}';
  }

  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'expertise': expertise,
      'experience': experience,
      'rating': rating,
      'phoneNumber': phoneNumber,
      'completed': completed,
      'activeClients': activeClients,
      'imageUrl': imageUrl,
    };
  }

  factory Trainer.fromJson(Map<String, dynamic> json) {
    return Trainer(
      fullName: json['fullName'] as String,
      expertise: json['expertise'] as String,
      experience: json['experience'] as int,
      rating: json['rating'] as double,
      phoneNumber: json['phoneNumber'] as String,
      completed: json['completed'] as int,
      activeClients: json['activeClients'] as int,
      imageUrl: json['imageUrl'] as String,
    );
  }
}
