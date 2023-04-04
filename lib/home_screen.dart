import 'dart:convert';
import 'dart:developer';

import 'package:api_todo/services/user_api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model/user.dart';
import 'model/user_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];
  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rest API call")),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final user = users[index];
          // final email = user.email;
          // final color = user.gender == 'male' ? Colors.blue : Colors.red;
          return ListTile(
            title: Text(user.fullName),
            subtitle: Text(user.location.state),
          );
        },
        itemCount: users.length,
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   fetchUsers();
      // }),
    );
  }

  Future<void> fetchUsers() async {
    final response = await UserApi.fetchUsers();
    setState(() {
      users = response;
    });
  }
}
