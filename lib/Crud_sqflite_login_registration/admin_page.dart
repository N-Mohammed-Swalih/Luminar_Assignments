import 'package:assignment/Crud_sqflite_login_registration/sql_helper.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  List<Map<String, dynamic>> users = [];
  @override
  void initState() {
    refresh();
    super.initState();
  }

  void refresh() async {
    var data = await SQLHelperAssignment.getAll();
    setState(() {
      users = data;
    });
  }

  void deleteuser(int id) async {
    await SQLHelperAssignment.deleteuser(id);
    refresh();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Successfully Deleted")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Home"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: ((context, index) => Card(
                child: ListTile(
                  title: Text('Username : ${users[index]['accname']}'),
                  subtitle: Text('Email id : ${users[index]['accmail']}'),
                  trailing: Wrap(
                    children: [
                      IconButton(
                        onPressed: () {
                          deleteuser(users[index]['id']);
                          refresh();
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
