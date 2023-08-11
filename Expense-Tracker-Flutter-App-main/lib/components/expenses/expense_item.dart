import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.grey, // First color (gray)
              Colors.grey    // Second color (primary with reduced blue)
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                expense.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text('Rs ${expense.amount.toStringAsFixed(1)}',
                      style: Theme.of(context).textTheme.titleSmall),
                  const Spacer(),
                  Row(
                    children: [
                      Icon(
                        categoryIcon[expense.category],
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        expense.formattedDate.toString(),
                        style: Theme.of(context).textTheme.titleSmall,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
