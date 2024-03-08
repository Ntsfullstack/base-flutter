import 'package:ints/models/vehicle.dart';

int countTickets(List<Ticket> tickets) {
  return tickets.length;
}

double calculateTotalAmount(List<Ticket> tickets) {
  return tickets.fold(0, (sum, ticket) => sum + ticket.totalAmount);
}
