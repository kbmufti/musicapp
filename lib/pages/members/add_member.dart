// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    'Add a member',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'input fname',
                          labelText: 'Name',
                          focusColor: Color.fromARGB(197, 10, 48, 79))),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.person_add_alt),
                        hintText: 'input lname',
                        labelText: 'Lname',
                        focusColor: Color.fromARGB(197, 10, 48, 79)),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
