import 'package:flutter/material.dart';
import 'package:quiz_app/data/todos.dart';
import 'package:quiz_app/detail_screen.dart';

class MysteryPage extends StatelessWidget {
  const MysteryPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
        body: Center(

      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
        
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 500,
              
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(todos[index].title),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailScreen(todo: todos[index])));
                    },
                  );
                },
                itemCount: todos.length,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back'),
            )
          ],
        ),
      ),
    ));
  }
}
