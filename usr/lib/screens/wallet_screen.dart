import 'package:flutter/material.dart';
import '../widgets/credit_card.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Wallet'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Add card action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Cards',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            const CreditCard(
              cardNumber: '**** **** **** 4242',
              cardHolder: 'ALEX DOE',
              expiryDate: '12/25',
              color1: Color(0xFF6C63FF),
              color2: Color(0xFF4834D4),
              cardType: 'VISA',
            ),
            const CreditCard(
              cardNumber: '**** **** **** 8899',
              cardHolder: 'ALEX DOE',
              expiryDate: '09/26',
              color1: Color(0xFFFF6B6B),
              color2: Color(0xFFEE5253),
              cardType: 'MASTERCARD',
            ),
            const SizedBox(height: 32),
            const Text(
              'Payment Methods',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            _buildPaymentMethodTile(
              context,
              icon: Icons.account_balance,
              title: 'Bank Account',
              subtitle: 'Chase Bank **** 1234',
            ),
            _buildPaymentMethodTile(
              context,
              icon: Icons.paypal,
              title: 'PayPal',
              subtitle: 'alex.doe@email.com',
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add_circle_outline),
                label: const Text('Add New Card'),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  side: BorderSide(color: Theme.of(context).primaryColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentMethodTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle, style: const TextStyle(color: Colors.grey)),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: () {},
      ),
    );
  }
}
