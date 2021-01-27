import 'package:flutter/material.dart';

class VendorDescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              // color: Colors.pink,

              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Arun's Special Laundry",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0,
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
                      // Icon(
                      //   data: IconButton(
                      //     color: Colors.green,
                      //   ),
                      //   child: Icon(Icons.call  ),

                      // ),\
                      IconButton(
                        icon: Icon(Icons.call),
                        color: Colors.green,
                        tooltip: 'Increase volume by 10',
                        onPressed: () => setState(() {
                          _launched = _makePhoneCall('tel:$number');
                        }),
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
            );
  }
}