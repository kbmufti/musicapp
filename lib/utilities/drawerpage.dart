// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:musicapp/pages/members/members_list.dart';

// ignore: use_key_in_widget_constructors
class drawer_panel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade500,
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.all(18),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  color: const Color.fromARGB(181, 4, 51, 90),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.account_circle_sharp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              title: const Text(
                'Account',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              // onTap: () {
              //   Navigator.of(context).push(
              //       MaterialPageRoute(builder: (context) => UserHome()));
              // },
            ),
          ),
          const Divider(
            color: Colors.white30,
          ),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                color: const Color.fromARGB(181, 4, 51, 90),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.history_toggle_off,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            title: const Text(
              ' History',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            // onTap: () {
            //   Navigator.of(context).push(
            //       MaterialPageRoute(builder: (context) => UserHome()));
            // },
          ),
          const Divider(
            color: Colors.white30,
          ),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                color: const Color.fromARGB(181, 4, 51, 90),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.people_alt_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            title: const Text(
              'Members',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Members()));
              // Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
