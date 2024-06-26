import 'package:app/home/logic/bloc/AdTopicsBloc.dart';
import 'package:app/home/logic/bloc/AdTopicsEvents.dart';
import 'package:app/home/logic/bloc/AdTopicsState.dart';
import 'package:app/home/uiblocks/EditAdTopicDialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdInterstViewer extends StatelessWidget {
  const AdInterstViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdTopicsBloc, AdTopicsState>(
      builder: (context, state) {
        if (state is AdTopicsInitial) {
          BlocProvider.of<AdTopicsBloc>(context)
              .add(const RequestUserAdTopics());
          return const CircularProgressIndicator();
        } else if (state is AdTopicsLoading) {
          return const CircularProgressIndicator();
        } else if (state is AdTopicsLoaded) {
          return ListView.builder(
            itemCount: state.adTopics.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.adTopics[index].category),
                trailing: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () => showDialog(
                      context: context,
                      builder: (context) =>
                          EditAdTopicDialog(adTopic: state.adTopics[index])),
                ),
              );
            },
          );
        } else if (state is AdTopicsError) {
          return Column(
            children: [
              Center(child: Text(state.message)),
              Center(
                  child: IconButton(
                      tooltip: "Retry",
                      icon: const Icon(Icons.refresh),
                      onPressed: () {
                        context
                            .read<AdTopicsBloc>()
                            .add(const RequestUserAdTopics());
                      }))
            ],
          );
        } else if (state is AdTopicsEmpty) {
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('No topics found yet'),
              TextButton(
                  onPressed: () => context
                      .read<AdTopicsBloc>()
                      .add(const RequestUserAdTopics()),
                  child: const Text("Retry"))
            ],
          ));
        } else {
          return const Text('Unknown state');
        }
      },
    );
  }
}
