import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final String cardNumber;
  final String cardHolder;
  final String expiryDate;
  final Color color1;
  final Color color2;
  final String cardType; // Visa, Mastercard

  const CreditCard({
    super.key,
    required this.cardNumber,
    required this.cardHolder,
    required this.expiryDate,
    required this.color1,
    required this.color2,
    this.cardType = 'VISA',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: color1.withOpacity(0.4),
            blurRadius: 12,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.nfc, color: Colors.white70, size: 30),
              Text(
                cardType,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
          Text(
            cardNumber,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              letterSpacing: 2,
              fontWeight: FontWeight.w600,
              fontFamily: 'Courier',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'CARD HOLDER',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 10,
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    cardHolder,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'EXPIRES',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 10,
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    expiryDate,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
