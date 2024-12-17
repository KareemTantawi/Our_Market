import 'package:flutter/material.dart';
import 'package:our_market/views/auth/ui/login_view.dart';

void main() {
  runApp(const OurMarket());
}

class OurMarket extends StatelessWidget {
  const OurMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Our Market',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: LoginView(),
    );
  }
}
