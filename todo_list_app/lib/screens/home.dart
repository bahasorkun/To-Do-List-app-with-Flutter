import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Icon(Icons.menu),
            SizedBox(
              height: 40,
              width: 40,
              child: ClipRRect(
                child: Image.asset("assets/avatar.jpg"),
              ),
            )
          ],
        ),
      ),
      body: Container(
        child: const Text("This is home screen"),
      ),
    );
  }
}
