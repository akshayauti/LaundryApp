import 'package:flutter/material.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum SingingCharacter { filter1, filter2, filter3, filter4, filter5 }

class _MyHomePageState extends State<MyHomePage> {
  SingingCharacter _character = SingingCharacter.filter1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Laundry App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.sort,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),

      // Use a Builder to get a context within the Scaffold.
      body: Builder(
        builder: (context) {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        icon: Icon(Icons.sort),
                        onPressed: () {
                          startAddFilter(context);
                        }),
                    Text(
                      "Filter",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      color: Colors.yellow,
                      child: Text("More Info"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minWidth: 100,
                      onPressed: () {
                        Navigator.pushNamed(context, '/vendorInfoPage');
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void startAddFilter(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (context) {
        final theme = Theme.of(context);
        // Using Wrap makes the bottom sheet height the height of the content.
        // Otherwise, the height will be half the height of the screen.
        return Container(
          height: MediaQuery.of(context).size.height * 0.6,
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: VerticalTabs(
                      indicatorColor: Colors.yellow,
                      contentScrollAxis: Axis.vertical,
                      tabsWidth: 150,
                      tabs: <Tab>[
                        Tab(
                          child: SizedBox(
                            child: Column(
                              children: [
                                Text('Sort By'),
                                Padding(padding: EdgeInsets.only(top: 3)),
                                Text(
                                  "Popularity",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.amber),
                                )
                              ],
                            ),
                            height: 40,
                          ),
                        ),
                        Tab(
                          child: SizedBox(
                            child: Text("Services"),
                            height: 40,
                          ),
                        ),
                        Tab(
                          child: SizedBox(
                            child: Text("Rating"),
                            height: 40,
                          ),
                        ),
                        Tab(
                          child: SizedBox(
                            child: Text("Cost"),
                            height: 40,
                          ),
                        ),
                        Tab(
                          child: SizedBox(
                            child: Text("More Filters"),
                            height: 40,
                          ),
                        ),
                      ],
                      contents: <Widget>[
                        Container(
                          color: Colors.black12,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Radio(
                                  value: SingingCharacter.filter1,
                                  groupValue: this._character,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      this._character = value;
                                      Navigator.of(context).pop();
                                      return startAddFilter(context);
                                    });
                                  },
                                ),
                                title: Text("Filter 1"),
                              ),
                              ListTile(
                                leading: Radio(
                                  value: SingingCharacter.filter2,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      this._character = value;
                                      print(_character.toString());
                                      Navigator.of(context).pop();
                                      return startAddFilter(context);
                                    });
                                  },
                                  groupValue: this._character,
                                ),
                                title: Text("Filter 2"),
                              ),
                              ListTile(
                                leading: Radio(
                                  value: SingingCharacter.filter3,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      this._character = value;
                                      Navigator.of(context).pop();
                                      return startAddFilter(context);
                                    });
                                  },
                                  groupValue: this._character,
                                ),
                                title: Text("Filter 3"),
                              ),
                              ListTile(
                                leading: Radio(
                                  value: SingingCharacter.filter4,
                                  groupValue: this._character,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      this._character = value;
                                      Navigator.of(context).pop();
                                      return startAddFilter(context);
                                    });
                                  },
                                ),
                                title: Text("Filter 4"),
                              ),
                              ListTile(
                                leading: Radio(
                                  value: SingingCharacter.filter5,
                                  groupValue: this._character,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      this._character = value;
                                      Navigator.of(context).pop();
                                      return startAddFilter(context);
                                    });
                                  },
                                ),
                                title: Text("Filter 5"),
                              ),
                            ],
                          ),
                        ),
                        tabsContent('Sort By',
                            'Change page by scrolling content is disabled in settings. Changing contents pages is only available via tapping on tabs'),
                        tabsContent('Dart'),
                        tabsContent('HTML 5'),
                        Container(
                            color: Colors.black12,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                itemCount: 3,
                                itemExtent: 100,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.all(10),
                                    color: Colors.white30,
                                  );
                                })),
                      ],
                    ),
                  ),
                ),
                // Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Clear All"),
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.yellow,
                      child: Text("Apply"),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget tabsContent(String caption, [String description = '']) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.4,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      color: Colors.black12,
      child: Column(
        children: <Widget>[
          Text(
            caption,
            style: TextStyle(fontSize: 25),
          ),
          Divider(
            height: 20,
            color: Colors.black45,
          ),
          Text(
            description,
            style: TextStyle(fontSize: 15, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
