import 'package:flutter/material.dart';

class RelativeScreen extends StatefulWidget {
  @override
  _RelativeScreenState createState() => _RelativeScreenState();
}

class _RelativeScreenState extends State<RelativeScreen> {
  List<dynamic> relatives = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: relatives?.length > 0 ? displayRelatives() : noRelative());
  }

  fetchRelatives() {}

  Widget displayRelatives() {
    // widget.showFab(false);
    return Container(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: relatives?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new Card(
                      child: new Container(
                        padding: new EdgeInsets.all(20.0),
                        child: new Column(
                          children: <Widget>[
                            new Text(
                              relatives[index],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget noRelative() {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'assets/no_data.png',
                // color: Colors.red,
                height: 250.0,
                // color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Sorry There are no relatives yet, Try Adding One',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: FloatingActionButton.extended(
                label: Text(
                  'Add Relative',
                ),
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    fetchRelatives();
    super.initState();
  }
}
