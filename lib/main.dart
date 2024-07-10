import 'package:app/adProfile/logic/backgroundJob/AdProfileJob.dart';
import 'package:app/anonymousID/logic/LinkHandler.dart';
import 'package:app/home/logic/bloc/AdTopicsBloc.dart';
import 'package:app/home/page/HomePage.dart';
import 'package:app/interactedAds/bloc/InteractedAdsBloc.dart';
import 'package:app/interactedAds/logic/backgroundJob/RequestInteractedAdsJob.dart';
import 'package:app/interactedAds/pages/InteractedAdsPage.dart';
import 'package:app/navigationBar/bloc/NavigationCubit.dart';
import 'package:app/register.dart';
import 'package:app/settings/page/SettingsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workmanager/workmanager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await register();
  await Workmanager().initialize(requestInteractedAdsJob, isInDebugMode: true);
  await Workmanager().registerPeriodicTask(
      "interacted-ads-fetch", "interacted-ads-fetch",
      initialDelay: const Duration(days: 1),
      existingWorkPolicy: ExistingWorkPolicy.replace,
      constraints: Constraints(networkType: NetworkType.connected),
      frequency: const Duration(days: 1, minutes: 2));
  await Workmanager().initialize(profileJobDispatcher, isInDebugMode: true);
  await Workmanager().registerPeriodicTask(
      "ad-profile-generation", "ad-profile-generation",
      existingWorkPolicy: ExistingWorkPolicy.replace,
      constraints: Constraints(networkType: NetworkType.connected),
      frequency: const Duration(days: 1),
      initialDelay: const Duration(seconds: 10));
  LinkHandler().registerListener();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        //BlocProvider(create: (context) => AuthBloc()),
        BlocProvider(create: (context) => NavigationCubit()),
        BlocProvider(create: (context) => AdTopicsBloc()),
        BlocProvider(create: (context) => InteractedAdsBloc())
      ],
      child: MaterialApp(
        title: 'Bads',
        routes: {
          '/home': (context) => const HomePage(),
          "/settings": (context) => const SettingsPage(),
          "/adHistory": (context) => const InteractedAdsPage(),
        },
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
          useMaterial3: true,
        ),
        home: const AuthPage(),
      ),
    );
  }
}

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox.fromSize(
        size: size,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                child: Column(
              children: [
                Title(
                    color: Colors.black,
                    child: Text(
                      "Bads",
                      style: Theme.of(context).textTheme.titleLarge,
                    )),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Privacy friendly advertising"),
                ),
              ],
            )),
            /*BlocConsumer<AuthBloc, AuthState>(
              builder: (context, state) {
                if (state is AuthenticationError) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("An error has occured",
                          style: Theme.of(context).textTheme.titleSmall),
                      Text(state.message),
                    ],
                  );
                } else if (state is AuthInitial) {
                  context.read<AuthBloc>().add(CheckAuthStatus());
                }
                return const SizedBox.shrink();
              },
              listener: (BuildContext context, state) {
                if (state is IsAuthenticated) {
                  Navigator.pushReplacementNamed(context, '/home');
                }
              },
            ),*/
            ElevatedButton.icon(
              icon: const Icon(Icons.key),
              onPressed: () {
                Navigator.of(context).pushNamed("/home");
                //context.read<AuthBloc>().add(SignIn());
              },
              label: const Text("Authenticate"),
            ),
          ],
        ),
      ),
    );
  }
}
