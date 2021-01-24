import 'package:flutter/material.dart';

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPage createState() => _ReviewPage();
}

class _ReviewPage extends State<ReviewPage> {
  ScrollController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            color: Colors.yellow,
                            child: Text("Add Review +"),
                            onPressed: () {
                              Navigator.of(context).pushNamed('/addReview');
                            },
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
              margin: EdgeInsets.fromLTRB(10, 0.0, 0.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    "Reviews",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: ListView.builder(
                controller: _controller,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.grey[100],
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black45, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.fromLTRB(15, 2, 15, 10),
                    borderOnForeground: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(10)),
                            Text(
                              "Akshay Auti",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.all(10)),
                            IconTheme(
                              data: IconThemeData(
                                color: Colors.amber,
                                size: 18,
                              ),
                              child: DisplayStarRating(value: 3),
                            ),
                            Padding(
                              padding: EdgeInsets.all(3),
                            ),
                            Text(
                              "3.0",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.all(10)),
                            Expanded(
                              child: Text(
                                "Nostrud sint adipisicing reprehenderit pariatur non qui Lorem excepteur. Pariatur ut laborum culpa aute reprehenderit laboris eu voluptate in. Dolore deserunt fugiat elit do dolore sit.",
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                ),
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                              ),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.black45,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Liked",
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 18,
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(5.0)),
                              Icon(
                                Icons.thumb_up,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DisplayStarRating extends StatelessWidget {
  final int value;
  const DisplayStarRating({Key key, this.value = 0})
      : assert(value != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
        );
      }),
    );
  }
}
