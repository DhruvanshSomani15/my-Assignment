import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        primary: false,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(30.0),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                        image: DecorationImage(
                            image: AssetImage('assets/images/ronaldo.png')),
                      ),
                    ),
                    title: Container(
                      width: 200,
                      child: Text('dhruvansh'),
                    ),
                    subtitle: Container(
                      width: 200,
                      child: Text('mumbai'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
