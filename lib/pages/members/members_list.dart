import 'package:flutter/material.dart';
import 'package:musicapp/pages/members/add_member.dart';

class Members extends StatelessWidget {
  const Members({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade300,
          elevation: 0,
          actions: [
            MaterialButton(
                child: const Icon(
                  Icons.add_outlined,
                  color: Colors.blue,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const AddUser()));
                })
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Chama Members',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                              padding: const EdgeInsets.all(16),
                              color: Colors.lightBlue,
                              child: const Icon(
                                Icons.person,
                                color: Colors.white,
                              )),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              'John Doe',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              '20 contribution',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
