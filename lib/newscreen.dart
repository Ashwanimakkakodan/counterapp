import 'package:counterapp/countcontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Newscreen extends StatelessWidget {
  const Newscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Text(
              context.watch<Countcontroller>().count.count.toString(),
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      context.read<Countcontroller>().decrement();
                    },
                    child: const Text("-", style: TextStyle(fontSize: 30)),
                  ),
                ),
                SizedBox(width: 30),

                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      context.read<Countcontroller>().increment();
                    },
                    child: const Text("+", style: TextStyle(fontSize: 30)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 200,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    context.read<Countcontroller>().reset();
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
