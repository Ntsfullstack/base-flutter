class Ticket {
  String licensePlate;
  String vehicleType;
  double totalAmount;
  late DateTime time;

  Ticket({
    required this.licensePlate,
    required this.vehicleType,
    required this.totalAmount,
    required this.time,
  });
}

final List<Ticket> ticketsData = [
  Ticket(
    licensePlate: '29A-12345',
    vehicleType: 'xe máy',
    totalAmount: 5000,
    time: DateTime(2022, 3, 4, 12, 30),
  ),
  Ticket(
    licensePlate: '30B-56789',
    vehicleType: 'ô tô',
    totalAmount: 25000,
    time: DateTime(2022, 3, 4, 12, 30),
  ),
  Ticket(
    licensePlate: '29A-12345',
    vehicleType: 'xe máy',
    totalAmount: 5000,
    time: DateTime(2022, 3, 4, 12, 30),
  ),
  Ticket(
    licensePlate: '29A-12345',
    vehicleType: 'xe máy',
    totalAmount: 5000,
    time: DateTime(2022, 3, 4, 12, 30),
  ),
  Ticket(
    licensePlate: '29A-12345',
    vehicleType: 'xe máy',
    totalAmount: 5000,
    time: DateTime(2022, 3, 4, 12, 30),
  ),
  Ticket(
    licensePlate: '29A-12345',
    vehicleType: 'xe máy',
    totalAmount: 5000,
    time: DateTime(2022, 3, 4, 12, 30),
  ),
  Ticket(
    licensePlate: '29A-12345',
    vehicleType: 'ô tô',
    totalAmount: 25000,
    time: DateTime(2022, 3, 4, 12, 30),
  ),
  Ticket(
    licensePlate: '29A-12345',
    vehicleType: 'ô tô',
    totalAmount: 25000,
    time: DateTime(2022, 3, 4, 12, 30),
  ),
  Ticket(
    licensePlate: '29A-12345',
    vehicleType: 'ô tô',
    totalAmount: 25000,
    time: DateTime(2022, 3, 4, 12, 30),
  ),
  Ticket(
    licensePlate: '90A-12212',
    vehicleType: 'xe máy',
    totalAmount: 5000,
    time: DateTime(2022, 3, 4, 12, 30),
  ),
  // Add more tickets here
];
