import 'package:flutter/material.dart';
import 'analysis2.dart';

class analysis extends StatefulWidget {
  @override
  _analysisState createState() => _analysisState();
}

class _analysisState extends State<analysis> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Text("AgroGo"),
          backgroundColor: Colors.yellowAccent.shade700,
        ),
        body: new Stack(
          children: <Widget>[
            new Container(
              child: new Text("Select the crops grown by you : "),
            ),
            new Container(
                margin: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
                child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                    children: <Widget>[
                      new GridTile(
                          child: new CircleAvatar(
                            child: Text("Paddy"),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                            child: Text("Wheat"),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                            child: Text("Jowar"),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                            child: Text("Bajra"),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                            child: Text("Barley"),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                            child: Text("Potato"),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                            child: Text("Groundnut"),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                            child: Text("Off season vegetables",textAlign: TextAlign.center,),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                            child: Text("Chilli"),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                            child: Text("Wheat"),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                            child: Text("Gram"),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                            child: Text("Maize"),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                            child: Text("Wheat"),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                            child: Text(""),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(
                          child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                    ])),
            new Container(
              alignment: Alignment.bottomCenter,
              child: new RaisedButton(
                onPressed: () {
                  var rou = new MaterialPageRoute(builder: (BuildContext context) {
                    return new analysi();
                  });
                  Navigator.of(context).push(rou);
                },
                child: new Text("NEXT"),
              ),
            )
          ],
        ));
  }
}
