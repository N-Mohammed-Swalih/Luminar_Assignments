import 'package:flutter/material.dart';
import 'package:assignment/Whatsapp_ui/dummy_whatsapp_list.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ListView(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                    "https://www.includehelp.com/Members/images/aman-gautam.jpg"),
              ),
              title: Text(
                "My status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Tap to add status update"),
            ),
            Text(
              "Recent updates",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
            ListView(
              children: whatsapplist
                  .map(
                    (contactpeople) => Card(
                      child: ListTile(
                        title: Text(contactpeople['name']),
                        subtitle: Text(contactpeople['statustime']),
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(contactpeople['statusimage']),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ],
    ));
  }
}
