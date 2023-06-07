import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("page 2"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.indigoAccent,
          child: const Icon(Icons.add),
        ),
        body: Center(
            child: Container(
              height: 100,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                  child: Text(
                    "page 2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  )),
            )));
  }
}