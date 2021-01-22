import 'package:flutter/material.dart';

class OverviewPage extends StatefulWidget {
  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: double.infinity,
                // color: Colors.lightGreen,
                child: Expanded(
                  child: Image(
                    image: AssetImage("images/LaundryImg.jpg"),
                  ),
                ),
              ),
              new Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                child: AppBar(
                  leading: new IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
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
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              // color: Colors.pink,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Arun's Special Laundry",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22.0,
                        ),
                      ),
                      Spacer(),
                      IconTheme(
                        data: IconThemeData(
                          color: Colors.amber,
                        ),
                        child: StarDisplay(value: 3),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Speciality - Steam Ironing,Roll Press",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 18.0,
                        ),
                      ),
                      Spacer(),
                      Text( 
                        "5.0",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 22.0,
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
                          fontSize: 18.0,
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
                          fontSize: 18.0,
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
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Spacer(),
                      IconTheme(
                        data: IconThemeData(
                          color: Colors.green,
                        ),
                        child: Icon(Icons.call  ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(3)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Address",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "On netaji road, Lohadad,\nPune-412411",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 18.0,
                        ),
                      ),
                      Spacer(),
                      IconTheme(
                        data: IconThemeData(
                          color: Colors.red,
                        ),
                        child: Icon(
                          Icons.map,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}

class StarDisplay extends StatelessWidget {
  final int value;
  const StarDisplay({Key key, this.value = 0})
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
