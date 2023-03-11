import 'package:flutter/material.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('D E S K T O P'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // First Column
            Expanded(
              child: Column(
                children: [
                  // youtube video (size sample)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        height: 250,
                        color: Colors.deepPurple[400],
                      ),
                    ),
                  ),

                  // Comment section / recommended video list (size sample)
                  Expanded(
                    child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.deepPurple[200],
                            height: 120,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Second Column
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
