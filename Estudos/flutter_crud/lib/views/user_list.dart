import 'package:flutter/material.dart';
import 'package:flutter_crud/components/user_title.dart';
import 'package:flutter_crud/data/dummy_users.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
        backgroundColor: Colors.purple[100],
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: DUMMY_USERS.length,
        itemBuilder: (context, index) =>
            UserTitle(users.values.elementAt(index)),
      ),
    );
  }
}
