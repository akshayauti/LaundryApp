import 'package:flutter/material.dart';

class addReview extends StatefulWidget {
  @override
  _addReviewState createState() => _addReviewState();
}

class _addReviewState extends State<addReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Review"),
      ),
      body: Center(
        child: Text(' i am in Add Review'),
      ),
    );
  }
}
