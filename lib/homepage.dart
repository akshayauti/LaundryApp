import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                        Navigator.pushNamed(context, '/overview');
                      },
                    ),
                    Spacer(),
                    MaterialButton(
                      color: Colors.yellow,
                      child: Text("Launch Photos"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minWidth: 100,
                      onPressed: () {
                        Navigator.pushNamed(context, '/photos');
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
        return Wrap(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Colors.black,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'Header',
                style: theme.textTheme.subtitle1
                    .copyWith(color: theme.colorScheme.onPrimary),
              ),
              tileColor: theme.colorScheme.primary,
            ),
            ListTile(
              title: Text('Title 1'),
            ),
            ListTile(
              title: Text('Title 2'),
            ),
            ListTile(
              title: Text('Title 3'),
            ),
            ListTile(
              title: Text('Title 4'),
            ),
            ListTile(
              title: Text('Title 5'),
            ),
          ],
        );
      },
    );
  }
}
