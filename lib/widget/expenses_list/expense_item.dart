import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 16.0,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                typeIcons[expense.expenseType],
                color: Colors.deepOrange,
              ),
              const SizedBox(width: 8.0),
              Text(expense.title),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text('\$${expense.amount.toStringAsFixed(2)}'),
              const Spacer(),
              Row(
                children: [
                  Icon(categoryIcons[expense.category], color: Colors.cyan),
                  const SizedBox(width: 8.0),
                  Text(expense.formattedDate),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
