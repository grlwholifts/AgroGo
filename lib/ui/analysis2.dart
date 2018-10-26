import 'package:flutter/material.dart';

class analysi extends StatefulWidget {
  @override
  _analysiState createState() => _analysiState();
}

class _analysiState extends State<analysi> {
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
                child: GridView.count(crossAxisCount: 2,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                    children: <Widget>[
                      new GridTile(child: new CircleAvatar(
                        child: Text("Cotton"),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        child: Text("Jute"),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        child: Text("Honey"),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        child: Text("Mango"),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        child: Text("Medicinal and aromatic plants"),
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                      new GridTile(child: new CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Colors.yellowAccent,
                      )),
                    ])
            ),
            
            new Container(
              child: RaisedButton(onPressed: () {
                var ro = new MaterialPageRoute(builder: (BuildContext context) {
                  return new analysi();
                });
                Navigator.of(context).push(ro);
              }),
            )
          ],
        )


    );
  }
}
