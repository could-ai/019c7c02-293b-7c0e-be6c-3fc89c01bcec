class Transaction {
  final String id;
  final String title;
  final String subtitle;
  final double amount;
  final DateTime date;
  final bool isIncome;
  final String iconPath; // Using generic icon data for now

  Transaction({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.date,
    required this.isIncome,
    this.iconPath = '',
  });
}

final List<Transaction> mockTransactions = [
  Transaction(
    id: '1',
    title: 'Netflix Subscription',
    subtitle: 'Entertainment',
    amount: 15.99,
    date: DateTime.now().subtract(const Duration(hours: 2)),
    isIncome: false,
  ),
  Transaction(
    id: '2',
    title: 'Salary Deposit',
    subtitle: 'Tech Corp Inc.',
    amount: 3500.00,
    date: DateTime.now().subtract(const Duration(days: 1)),
    isIncome: true,
  ),
  Transaction(
    id: '3',
    title: 'Grocery Store',
    subtitle: 'Food & Drink',
    amount: 84.32,
    date: DateTime.now().subtract(const Duration(days: 2)),
    isIncome: false,
  ),
  Transaction(
    id: '4',
    title: 'Electric Bill',
    subtitle: 'Utilities',
    amount: 120.50,
    date: DateTime.now().subtract(const Duration(days: 5)),
    isIncome: false,
  ),
  Transaction(
    id: '5',
    title: 'Freelance Payment',
    subtitle: 'Design Work',
    amount: 450.00,
    date: DateTime.now().subtract(const Duration(days: 6)),
    isIncome: true,
  ),
];
