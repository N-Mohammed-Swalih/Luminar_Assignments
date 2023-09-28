import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import 'package:hive_flutter/hive_flutter.dart';

class HomeScreenNotesApp extends StatefulWidget {
  HomeScreenNotesApp({super.key});

  @override
  State<HomeScreenNotesApp> createState() => _HomeScreenNotesAppState();
}

class _HomeScreenNotesAppState extends State<HomeScreenNotesApp> {
  final notes_heading_controller = TextEditingController();
  final notes_content_controller = TextEditingController();
  final mybox = Hive.box('Notes App Box');
  void initState() {
    load_or_read_notes();
    super.initState();
  }

  List<Map<String, dynamic>> notes = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "Notes",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          actions: [
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Row(children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.check_box,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    const Text("Select"),
                  ]),
                ),
                PopupMenuItem(
                  child: Row(children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    const Text("Recently Deleted"),
                  ]),
                )
              ];
            }),
          ]),
      body: notes.isEmpty
          ? Scaffold(
              backgroundColor: Colors.black,
              body: Stack(children: [
                const Positioned(
                  top: 0,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "All Notes",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Center(
                    child: Positioned(
                  top: MediaQuery.of(context).size.height / 2,
                  child: const Text("No notes added yet!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500)
                      // textAlign: TextAlign.center,
                      ),
                )),
              ]),
            )
          : Scaffold(
              backgroundColor: Colors.black,
              body: ListView.builder(
                  itemCount: notes.length,
                  itemBuilder: (context, index) {
                    final mynotes =
                        notes[index]; //fetch each single map from list
                    return Card(
                      child: ListTile(
                        tileColor: Colors.black87,
                        title: Text(mynotes['notesheading'],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white)),
                        subtitle: Text(
                          mynotes['notescontent'],
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                showNotes(context, mynotes["id"]);
                              },
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  deletenotes(mynotes["id"]);
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    );
                  }),
            ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          onPressed: () {
            showNotes(context, null);
          },
          child: Icon(Icons.add)),
    );
  }

  void showNotes(BuildContext context, int? itemkey) {
    if (itemkey != null) {
      final existingNotes =
          notes.firstWhere((element) => element['id'] == itemkey);
      notes_heading_controller.text = existingNotes['notesheading'];
      notes_content_controller.text = existingNotes['notescontent'];
    }
    //itemkey is similar to id in sqflite
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Center(
            child: Container(
              color: Colors.black,
              padding: EdgeInsets.only(
                top: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120,
                left: 15,
                right: 15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    "Add Notes",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: notes_heading_controller,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: "Notes Heading",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: notes_content_controller,
                    decoration: const InputDecoration(
                        filled: true, //<-- SEE HERE
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        hintText: "Note"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (notes_heading_controller.text != "" &&
                          notes_content_controller.text != "") {
                        if (itemkey == null) {
                          createNotes({
                            'id': itemkey,
                            'name': notes_heading_controller.text.trim(),
                            'content': notes_content_controller.text.trim(),
                          });
                        } else {
                          updateNotes(itemkey, {
                            'name': notes_heading_controller.text.trim(),
                            'content': notes_content_controller.text.trim(),
                          });
                        }
                      }
                      notes_content_controller.text = "";
                      notes_heading_controller.text = "";
                      Navigator.of(context).pop();
                    },
                    child: Text(itemkey == null ? 'Create Note' : 'Edit Note'),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.orange),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Future<void> createNotes(Map<String, dynamic> notes) async {
    await mybox.add(notes);
    load_or_read_notes();
  }

  Future<void> updateNotes(
      int? itemkey, Map<String, dynamic> updateNotes) async {
    await mybox.put(itemkey, updateNotes);
    load_or_read_notes();
  }

  void load_or_read_notes() {
    final notes_from_hive = mybox.keys.map((key) {
      final value = mybox.get(key);
      return {
        'id': key,
        'notesheading': value['name'],
        'notescontent': value['content']
      };
    }).toList();
    setState(() {
      notes = notes_from_hive.reversed.toList();
    });
  }

  Future<void> deletenotes(int itemkey) async {
    await mybox.delete(itemkey);
    load_or_read_notes();
    Get.snackbar('Hey You!', 'Notes Deleted Successfully',
        backgroundColor: Colors.orange, colorText: Colors.black87);
  }
}
