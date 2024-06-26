import 'package:app/db/models/AdTopic.dart';
import 'package:app/home/logic/bloc/AdTopicsBloc.dart';
import 'package:app/home/logic/bloc/AdTopicsEvents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditAdTopicDialog extends StatefulWidget {
  final AdTopic adTopic;
  const EditAdTopicDialog({super.key, required this.adTopic});

  @override
  State<EditAdTopicDialog> createState() => _EditAdTopicDialogState();
}

class _EditAdTopicDialogState extends State<EditAdTopicDialog> {
  List<String> adSubTopics = [];
  late AdTopic topic;
  @override
  void initState() {
    super.initState();
    adSubTopics = widget.adTopic.category.split("/");
    adSubTopics.remove("");
    topic = widget.adTopic;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                topic.category,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              DropdownButton(
                  isExpanded: true,
                  value: topic.category,
                  items: _adTopicOptionsGenerator(adSubTopics, context),
                  onChanged: (v) {
                    setState(() {
                      topic = widget.adTopic.copyWith(category: v);
                    });
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () => context
                          .read<AdTopicsBloc>()
                          .add(UpdateUserAdTopic(adTopic: topic)),
                      icon: const Icon(Icons.check)),
                  IconButton(
                      onPressed: () =>
                          context.read<AdTopicsBloc>().add(DropAdTopic(topic)),
                      icon: const Icon(Icons.delete))
                ],
              )
            ],
          )),
    );
  }

  List<DropdownMenuItem> _adTopicOptionsGenerator(
      List<String> adSubTopics, BuildContext context) {
    List<DropdownMenuItem> items = [];
    String previous = "";
    for (var subTopic in adSubTopics) {
      items.add(DropdownMenuItem(
        value: "$previous/$subTopic",
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            "$previous/$subTopic",
            overflow: TextOverflow.fade,
            maxLines: 1,
            softWrap: false,
          ),
        ),
      ));
      previous = "$previous/$subTopic";
    }
    return items;
  }
}
