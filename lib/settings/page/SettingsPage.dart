import 'package:app/navigationBar/uiblocks/BottomNavBar.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
          Center(
            child: Title(
                color: Colors.black,
                child: Text(
                  "Settings",
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
          ),
          ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {
                //context.read<AuthBloc>().add(SignOut());
                Navigator.of(context).popAndPushNamed("/");
              }),
        ]),
        bottomNavigationBar: const BottomNavBar());
  }
}
