import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomeScreenNotesApp extends StatefulWidget {
  HomeScreenNotesApp({super.key});

  @override
  State<HomeScreenNotesApp> createState() => _HomeScreenNotesAppState();
}

class _HomeScreenNotesAppState extends State<HomeScreenNotesApp> {
  final notes_heading_controller = TextEditingController();
  final notes_content_controller = TextEditingController();
  final mybox = Hive.box('to_do_app Box');
  void initState() {
    // load_or_read_Task();
    super.initState();
  }

  List<Map<String, dynamic>> task = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notes",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              // const PopupMenuItem(child: Text("Select all")),
              // const PopupMenuItem(child: Text("Select")),
              // const PopupMenuItem(child: Text("New Contact")),
              // const PopupMenuItem(child: Text("New Community")),
            ];
          }),
        ],
      ),
      body: task.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: task.length,
              itemBuilder: (context, index) {
                final mytask = task[index]; //fetch each single map from list
                return Card(
                  child: ListTile(
                    title: Text(mytask['taskname']),
                    subtitle: Text(mytask['taskcontent']),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            // showTask(context, mytask["id"]);
                          },
                          icon: const Icon(Icons.edit),
                        ),
                        IconButton(
                            onPressed: () {
                              // deletetask(mytask["id"]);
                            },
                            icon: const Icon(Icons.delete))
                      ],
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // showTask(context, null);
          },
          label: const Text("Create Task"),
          icon: Icon(Icons.add)),
    );
  }
}
