import 'package:expense/widgets/expense_list.dart';
import 'package:flutter/material.dart';
import 'package:expense/models/expense_model.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ExpenseScreenState();
  }
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  @override
  Widget build(context) {
    final List<ExpenseModel> _expenses = [
      ExpenseModel(
          title: 'Marketing',
          amount: 25,
          date: DateTime.now(),
          category: Category.leisure),
      ExpenseModel(
          title: 'Book Fair',
          amount: 109,
          date: DateTime.now(),
          category: Category.book)
    ];
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('App chart'),
        Expanded(
          child: ExpenseList(expenses: _expenses),
        ),
      ]),
    );
  }
}
