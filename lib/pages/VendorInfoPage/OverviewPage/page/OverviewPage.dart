import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:collection';

class OverviewPage extends StatefulWidget {
  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  // to Call the setupLocator() function of CallAndMessageService Class
  final String number = '+91 95958 39575';
  Future<void> _launched;

  GoogleMapController _controller;

  CameraPosition _cameraPosition =
      CameraPosition(target: LatLng(18.5732367, 73.9036081), zoom: 15.0);
  LatLng _laundry_pos = LatLng(18.5732367, 73.9036081);

  Set<Marker> _marker = HashSet<Marker>();

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      // to pin point the location or mark the location
      _marker.add(Marker(
        markerId: MarkerId("marker_id_1"),
        position: LatLng(18.5732367, 73.9036081),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: double.infinity,
                // color: Colors.lightGreen,
                child: Image(
                  image: AssetImage("images/LaundryImg.jpg"),
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
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 200,
              // color: Colors.lightBlue,
              child: GoogleMap(
                initialCameraPosition: this._cameraPosition,
                zoomGesturesEnabled: true,
                markers: _marker,
                onMapCreated: (controller) {
                  setState(() {
                    this._controller = controller;
                  });
                },
                onTap: (coordinates) {
                  print("tapped");
                  _controller
                      .animateCamera(CameraUpdate.newLatLng(coordinates));
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(5.0)),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Other info",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.cancel,
                        color: Colors.red,
                      ),
                      Text(
                        "Cash on delivery",
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                      Text(
                        "Online",
                      ),
                    ],
                  ),
                ],
              ),
            )
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
