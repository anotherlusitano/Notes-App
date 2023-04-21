import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, value, child) => Scaffold(
        body: Column(
          children: [
            //heading
            const Padding(
              padding: EdgeInsets.only(left: 25.0, top: 75),
              child: Text(
                'Notes',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),

            //list of notes
            CupertinoListSection.insetGrouped(
              children: [
                CupertinoListTile(title: Text("bananas")),
                CupertinoListTile(title: Text("bananas")),
                CupertinoListTile(title: Text("bananas")),
                CupertinoListTile(title: Text("bananas")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
