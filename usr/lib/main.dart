import 'package:flutter/material.dart';
import 'theme.dart';
import 'screens/main_screen.dart';
import 'screens/send_screen.dart';
import 'screens/receive_screen.dart';

void main() {
  runApp(const WalletApp());
}

class WalletApp extends StatelessWidget {
  const WalletApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/send': (context) => const SendScreen(),
        '/receive': (context) => const ReceiveScreen(),
      },
    );
  }
}
