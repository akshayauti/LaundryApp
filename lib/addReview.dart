import 'dart:math';

import 'package:LaundryApp/OverviewPage.dart';
import 'package:flutter/material.dart';

class addReview extends StatefulWidget {
  @override
  _addReviewState createState() => _addReviewState();
}

class _addReviewState extends State<addReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(15.0, 80.0, 15.0, 0.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Arun's Special Laundry",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 25.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text(
                            "Speciality - Steam Ironing,Roll Press",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Lohgaon, Pune",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Closes in 30 min",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "12 noon-3.30pm , 6.30pm-10pm\n(Today)",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey[400],
                        thickness: 1,
                      )
                    ],
                  )),
              Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                child: AppBar(
                  leading: new IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  backgroundColor:
                      Colors.transparent, //You can make this transparent
                  elevation: 0.0, //No shadow
                ),
              ),
            ]),
            Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 0.0),
                child: Column(children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Give your rating",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconTheme(
                        data: IconThemeData(
                          color: Colors.amber,
                        ),
                        child: StarDisplay(value: 3),
                      ),
                    ],
                  ),
                ])),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.grey[300], // set border color
                    width: 2.0), // set border width
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)), // set rounded corner radius
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Add your opinion'),
                maxLines: 5,
              ),
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 0.0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        color: Colors.yellow,
                        child: Text("Submit"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minWidth: 100,
                        onPressed: () {
                          Navigator.of(context).pushNamed('/addReview');
                        },
                      ),
                    ],
                  ),
                ])),
          ],
        ),
      ),
    );
  }
}
