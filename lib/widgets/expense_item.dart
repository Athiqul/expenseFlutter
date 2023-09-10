import 'package:expense/models/expense_model.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.item});
  final ExpenseModel item;
  @override
  Widget build(context) {
    return Card(
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            children: [
              Text(item.title),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text('\$${item.amount.toStringAsFixed(2)}'),
                  const Spacer(),
                  Row(
                    children: [
                      const Icon(Icons.alarm),
                      Text(item.date.toString())
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
