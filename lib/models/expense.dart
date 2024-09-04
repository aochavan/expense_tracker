import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();

final dateFormatter = DateFormat.yMd();

enum ExpenseType {
  personal,
  work,
  business,
}

const typeIcons = {
  ExpenseType.personal: Icons.person_outline_sharp,
  ExpenseType.work: Icons.work_outline,
  ExpenseType.business: Icons.business,
};

enum Category {
  food,
  education,
  travel,
  entertainment,
  grocery,
  utility,
  gas,
  leisure,
  insurance,
  mortgage,
  service,
  medical,
}

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.education: Icons.local_library_rounded,
  Category.travel: Icons.airplane_ticket,
  Category.entertainment: Icons.local_movies_outlined,
  Category.grocery: Icons.local_grocery_store_outlined,
  Category.utility: Icons.electric_bolt,
  Category.gas: Icons.local_gas_station_rounded,
  Category.leisure: Icons.beach_access,
  Category.insurance: Icons.edit_document,
  Category.mortgage: Icons.maps_home_work_outlined,
  Category.service: Icons.plumbing_rounded,
  Category.medical: Icons.medical_services,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.expenseType,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final ExpenseType expenseType;
  final Category category;

  String get formattedDate {
    return dateFormatter.format(date);
  }
}
