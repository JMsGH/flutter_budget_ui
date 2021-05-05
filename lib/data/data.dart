import 'dart:math';

import 'package:flutter_budget_ui/models/category_model.dart';
import 'package:flutter_budget_ui/models/expense_model.dart';

final rand = Random();

final List<double> weeklySpending = [
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
];

_generateExpenses() {
  List<Expense> expenses = [
    Expense(name: 'Item 0', cost: rand.nextDouble() * 90),
    Expense(name: 'Item 1', cost: rand.nextDouble() * 90),
    Expense(name: 'Item 2', cost: rand.nextDouble() * 90),
    Expense(name: 'Item 3', cost: rand.nextDouble() * 90),
    Expense(name: 'Item 4', cost: rand.nextDouble() * 90),
    Expense(name: 'Item 5', cost: rand.nextDouble() * 90),
  ];
  return expenses;
}

List<Category> categories = [
  Category(name: '食料', maxAmount: 450, expenses: _generateExpenses()),
  Category(name: '衣料', maxAmount: 500, expenses: _generateExpenses()),
  Category(name: '水道光熱', maxAmount: 600, expenses: _generateExpenses()),
  Category(name: '娯楽', maxAmount: 330, expenses: _generateExpenses()),
  Category(name: '交通', maxAmount: 500, expenses: _generateExpenses()),
  Category(name: '住宅', maxAmount: 1000, expenses: _generateExpenses()),
];
