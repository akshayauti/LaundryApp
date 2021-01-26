import 'package:LaundryApp/pages/MenuPhotos/widgets/RatingView.dart';
import 'package:LaundryApp/pages/MenuPhotos/widgets/addPhotos.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Photos extends StatefulWidget {
  @override
  _PhotosState createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  final String number = '+91 95958 39575';
  Future<void> _launched;

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                'Shop Photos',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              leading: new IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        'Aruns Shop',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0,
                        ),
                      ),
                      Spacer(),
                      Container(
                        child: RatingView(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Speciality - Steam Ironing,Roll Press",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 18.0,
                        ),
                      )
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
                  Divider(
                    color: Colors.black,
                  ),
                  AddPhotos(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
