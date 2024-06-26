import 'package:app/home/uiblocks/AdTopicsViewer.dart';
import 'package:app/navigationBar/uiblocks/BottomNavBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Your Ad Interests",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const Expanded(child: AdInterstViewer())
            ]),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
