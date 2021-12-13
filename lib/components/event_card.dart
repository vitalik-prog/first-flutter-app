import 'package:first_flutter_app/models/events.dart';
import 'package:flutter/material.dart';

class EventCard extends StatefulWidget {
  const EventCard({
    Key? key,
    required this.singleEvent,
  }) : super(key: key);

  final Event singleEvent;

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  var _isEnabled = true;

  @override
  void initState() {
    super.initState();
    print("init State");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Card(
        color: Colors.cyan,
        elevation: 10,
        shadowColor: Colors.purple,
        margin: const EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          enabled: _isEnabled,
          title: Text(widget.singleEvent.name, style: const TextStyle(fontSize: 30)),
          subtitle: Text("${widget.singleEvent.location} ${widget.singleEvent.startDateTime}", style: const TextStyle(fontSize: 15)),
          leading: const Icon(
            Icons.local_activity,
            size: 40,
          ),
          trailing: IconButton(
            icon: _isEnabled ? const Icon(Icons.lock_open) : const Icon(Icons.lock_outline),
            onPressed: () => setState(() {
              _isEnabled = !_isEnabled;
            }),
          ),
          onTap: () => print("${widget.singleEvent.name}  tap"),
          onLongPress: () => print("${widget.singleEvent.name}  longPress"),
        ));
  }
}