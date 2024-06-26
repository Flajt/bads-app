import 'package:app/interactedAds/bloc/InteractedAdsBloc.dart';
import 'package:app/interactedAds/bloc/InteractedAdsEvents.dart';
import 'package:app/interactedAds/bloc/InteractedAdsState.dart';
import 'package:app/navigationBar/uiblocks/BottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InteractedAdsPage extends StatelessWidget {
  const InteractedAdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Interacted Ads",
                style: Theme.of(context).textTheme.headlineMedium,
              )),
          BlocBuilder<InteractedAdsBloc, InteractedAdsState>(
              builder: (context, state) {
            if (state is InteractedAdsLoaded) {
              if (state.ads.isEmpty) {
                return Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("No ads interacted with yet"),
                    TextButton(
                        onPressed: () => context
                            .read<InteractedAdsBloc>()
                            .add(FetchInteractedAds()),
                        child: const Text("Retry"))
                  ],
                ));
              }
              return Expanded(
                child: ListView.builder(
                    itemCount: state.ads.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                          title: Text(state.ads[index].adTitle),
                          subtitle: Text(state.ads[index].adDescription,
                              overflow: TextOverflow.fade, softWrap: false),
                          leading: CircleAvatar(
                              child: Image.network(state.ads[index].assetURL)));
                    }),
              );
            } else if (state is InteractedAdsInitial) {
              context.read<InteractedAdsBloc>().add(FetchInteractedAds());
            }
            return const Center(child: CircularProgressIndicator.adaptive());
          }),
        ],
      )),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
