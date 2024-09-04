import '../models/trainer.dart';

class TrainersController {
  TrainersController._();

  static final TrainersController _controller = TrainersController._();

  factory TrainersController() => _controller;

  final List<Trainer> trainers = [
    const Trainer(
      fullName: 'John Doe',
      expertise: 'Fitness Trainer',
      experience: 10,
      rating: 4.8,
      phoneNumber: '+1234567890',
      completed: 200,
      activeClients: 10,
      imageUrl: 'https://randomuser.me/api/portraits/men/2.jpg',
    ),
    const Trainer(
      fullName: 'Jane Smith',
      expertise: 'Yoga Instructor',
      experience: 7,
      rating: 4.6,
      phoneNumber: '+1987654321',
      completed: 150,
      activeClients: 8,
      imageUrl: 'https://randomuser.me/api/portraits/men/3.jpg',
    ),
    const Trainer(
      fullName: 'Mark Johnson',
      expertise: 'Bodybuilding Coach',
      experience: 12,
      rating: 4.9,
      phoneNumber: '+1122334455',
      completed: 250,
      activeClients: 15,
      imageUrl: 'https://randomuser.me/api/portraits/men/4.jpg',
    ),
    const Trainer(
      fullName: 'Emily Davis',
      expertise: 'Pilates Instructor',
      experience: 5,
      rating: 4.5,
      phoneNumber: '+1223344556',
      completed: 100,
      activeClients: 6,
      imageUrl: 'https://randomuser.me/api/portraits/men/5.jpg',
    ),
    const Trainer(
      fullName: 'Michael Brown',
      expertise: 'Crossfit Coach',
      experience: 8,
      rating: 4.7,
      phoneNumber: '+1334455667',
      completed: 180,
      activeClients: 12,
      imageUrl: 'https://randomuser.me/api/portraits/men/8.jpg',
    ),
    const Trainer(
      fullName: 'Olivia Wilson',
      expertise: 'Nutrition Specialist',
      experience: 6,
      rating: 4.4,
      phoneNumber: '+1445566778',
      completed: 130,
      activeClients: 9,
      imageUrl: 'https://randomuser.me/api/portraits/men/10.jpg',
    ),
    const Trainer(
      fullName: 'William Taylor',
      expertise: 'Strength Coach',
      experience: 9,
      rating: 4.7,
      phoneNumber: '+1556677889',
      completed: 210,
      activeClients: 14,
      imageUrl: 'https://randomuser.me/api/portraits/men/16.jpg',
    ),
    const Trainer(
      fullName: 'Sophia Martinez',
      expertise: 'Dance Fitness Instructor',
      experience: 4,
      rating: 4.3,
      phoneNumber: '+1667788990',
      completed: 90,
      activeClients: 5,
      imageUrl: 'https://randomuser.me/api/portraits/men/18.jpg',
    ),
    const Trainer(
      fullName: 'James Anderson',
      expertise: 'Martial Arts Trainer',
      experience: 11,
      rating: 4.8,
      phoneNumber: '+1778899001',
      completed: 230,
      activeClients: 11,
      imageUrl: 'https://randomuser.me/api/portraits/men/19.jpg',
    ),
    const Trainer(
      fullName: 'Isabella Lee',
      expertise: 'Cardio Coach',
      experience: 3,
      rating: 4.2,
      phoneNumber: '+1889900112',
      completed: 80,
      activeClients: 4,
      imageUrl: 'https://randomuser.me/api/portraits/men/28.jpg',
    ),
  ];
}
