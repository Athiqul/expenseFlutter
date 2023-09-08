import 'package:uuid/uuid.dart';

enum Category { leisure, book, food, grocery }

const uuid = Uuid();

class ExpenseModel {
  ExpenseModel(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
  final String id;
}
