import 'package:flutter/material.dart';
import 'package:my_project_name/post.dart';
import 'package:my_project_name/story.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.camera_alt_outlined,
          size: 40,
          color: Colors.grey[600],
        ),
        title: Text(
          'Instagram',
          style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 20,
              color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/messanger.png'))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StoryWidget(),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey,
              margin: EdgeInsets.only(top: 1),
            ),
            PostWidget()

            // other widgets for posts
          ],
        ),
      ),
    );
  }
}
