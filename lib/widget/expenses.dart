import 'package:expense_tracker/widget/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widget/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      expenseType: ExpenseType.business,
      category: Category.education,
    ),
    Expense(
      title: 'Costco',
      amount: 100.99,
      date: DateTime.now(),
      expenseType: ExpenseType.personal,
      category: Category.grocery,
    ),
    Expense(
      title: 'Taxi',
      amount: 45.29,
      date: DateTime.now(),
      expenseType: ExpenseType.work,
      category: Category.travel,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker App'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('The chart'),
            Expanded(
              child: ExpensesList(expenses: _registeredExpenses),
            ),
          ]),
    );
  }
}
