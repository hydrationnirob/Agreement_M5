import 'package:flutter/material.dart';


class page3 extends StatelessWidget {
  const page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("page 3"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lightGreenAccent,
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 250,
          decoration: BoxDecoration(
              color: Colors.lightGreenAccent,
              borderRadius: BorderRadius.circular(20)),
          child: const Center(
              child: Text(
                "Home Page",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              )),
        ),
      ),
    );
  }
}
