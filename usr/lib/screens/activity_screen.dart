import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../widgets/transaction_list_tile.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  int _selectedFilterIndex = 0;
  final List<String> _filters = ['All', 'Income', 'Expense'];

  List<Transaction> get _filteredTransactions {
    if (_selectedFilterIndex == 0) return mockTransactions;
    if (_selectedFilterIndex == 1) return mockTransactions.where((t) => t.isIncome).toList();
    return mockTransactions.where((t) => !t.isIncome).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: List.generate(_filters.length, (index) {
                final isSelected = _selectedFilterIndex == index;
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: FilterChip(
                    selected: isSelected,
                    label: Text(_filters[index]),
                    labelStyle: TextStyle(
                      color: isSelected ? Colors.white : Colors.white70,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                    backgroundColor: Theme.of(context).cardTheme.color,
                    selectedColor: Theme.of(context).primaryColor,
                    checkmarkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: isSelected ? Colors.transparent : Colors.white10,
                      ),
                    ),
                    onSelected: (bool selected) {
                      setState(() {
                        _selectedFilterIndex = index;
                      });
                    },
                  ),
                );
              }),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: _filteredTransactions.length,
              itemBuilder: (context, index) {
                return TransactionListTile(transaction: _filteredTransactions[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
