import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(6.0),
            child: Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF9B2282), Color(0xFFEEA863)]),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/messi.png'))),
                  child: Column(
                    children: <Widget>[
                      Text("Story ${index + 1}"),
                      // other elements
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
