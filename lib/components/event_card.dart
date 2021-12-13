import 'package:first_flutter_app/models/events.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.singleEvent,
  }) : super(key: key);

  final Event singleEvent;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.cyan,
        elevation: 10,
        shadowColor: Colors.purple,
        margin: const EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          title: Text(singleEvent.name, style: const TextStyle(fontSize: 30)),
          subtitle: Text("${singleEvent.location} ${singleEvent.startDateTime}", style: const TextStyle(fontSize: 15)),
          leading: const Icon(
            Icons.local_activity,
            size: 40,
          ),
          trailing: const IconButton(
            icon: Icon(Icons.edit),
            onPressed: null,
          ),
          onTap: () => print("${singleEvent.name}  tap"),
          onLongPress: () => print("${singleEvent.name}  longPress"),
        ));
  }
}