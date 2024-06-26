import 'package:flutter/material.dart';

class SecretHandoverPage extends StatelessWidget {
  const SecretHandoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
