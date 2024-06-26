import 'package:app/navigationBar/bloc/NavigationCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, int>(
      builder: (context, state) {
        final cubit = context.read<NavigationCubit>();
        return BottomNavigationBar(
          onTap: (value) {
            cubit.updateIndex(value);
            if (value == 0) {
              Navigator.popAndPushNamed(context, '/home');
            } else if (value == 1) {
              Navigator.popAndPushNamed(context, '/adHistory');
            } else if (value == 2) {
              Navigator.popAndPushNamed(context, '/settings');
            }
          },
          currentIndex: state,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'Ad History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        );
      },
    );
  }
}
