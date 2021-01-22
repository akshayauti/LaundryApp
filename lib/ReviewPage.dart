import 'package:flutter/material.dart';

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPage createState() => _ReviewPage();
}

class _ReviewPage extends State<ReviewPage> {
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
            ])
          ],
        ),
      ),
    );
  }
}
