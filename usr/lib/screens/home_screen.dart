import 'package:flutter/material.dart';
import '../widgets/balance_card.dart';
import '../widgets/action_button.dart';
import '../widgets/transaction_list_tile.dart';
import '../models/transaction.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back,',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Alex Doe',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: NetworkImage('https://i.pravatar.cc/150?img=11'), // Placeholder avatar
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Icon(Icons.person, color: Colors.white70), // Fallback
                  ),
                ],
              ),
              const SizedBox(height: 32),
              
              // Balance Card
              const BalanceCard(balance: 12450.80),
              
              const SizedBox(height: 32),
              
              // Quick Actions
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActionButton(
                    icon: Icons.arrow_upward,
                    label: 'Send',
                    onTap: () => Navigator.pushNamed(context, '/send'),
                  ),
                  ActionButton(
                    icon: Icons.arrow_downward,
                    label: 'Receive',
                    onTap: () => Navigator.pushNamed(context, '/receive'),
                  ),
                  ActionButton(
                    icon: Icons.add_card,
                    label: 'Top Up',
                    onTap: () {},
                  ),
                  ActionButton(
                    icon: Icons.more_horiz,
                    label: 'More',
                    onTap: () {},
                  ),
                ],
              ),
              
              const SizedBox(height: 32),
              
              // Recent Activity Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Activity',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to full history or switch tab
                    },
                    child: const Text('See All'),
                  ),
                ],
              ),
              
              const SizedBox(height: 16),
              
              // Transactions List
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: mockTransactions.length,
                itemBuilder: (context, index) {
                  return TransactionListTile(transaction: mockTransactions[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
