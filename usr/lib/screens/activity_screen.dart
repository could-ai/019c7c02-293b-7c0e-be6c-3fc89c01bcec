import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../widgets/transaction_list_tile.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity'),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: mockTransactions.length,
        itemBuilder: (context, index) {
          return TransactionListTile(transaction: mockTransactions[index]);
        },
      ),
    );
  }
}
