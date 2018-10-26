import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../ui/chat.dart';
import 'analysis.dart';

class Agro extends StatefulWidget {
  @override
  _AgroState createState() => _AgroState();
}

class _AgroState extends State<Agro> {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.green.shade800,
            title: new Text("AgroGo"),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.filter_drama)),
                Tab(icon: Icon(Icons.apps))
              ],
            ),
          ),
          drawer: new Drawer(
            child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: new Text('PURNIKA'),
                  accountEmail: null,
                  currentAccountPicture: new CircleAvatar(),
                ),
                new ListTile(
                  title: new Text('MY PROFILE'),
                  trailing: new Icon(Icons.person),
                ),
                new ListTile(
                  title: new Text('CHANGE LANGUAGE'),
                  trailing: new Icon(Icons.translate),
                ),
              ],
            ),
          ),
          body: new Stack(children: <Widget>[
            new TabBarView(
              children: [
                new Container(
                  alignment: Alignment.center,
                  child: new Stack(
                    children: <Widget>[
                      new Center(
                        child: new Image.asset(
                          'images/field.jpg',
                          fit: BoxFit.fill,
                          height: 1000.0,
                          width: 550.0,
                        ),
                      ),
                      new Container(
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 90.0),
                        child: new CircleAvatar(
                          radius: 60.0,
                          child: new FlatButton(
                              onPressed: () {
                                var rout = new MaterialPageRoute(builder: (BuildContext context) {
                                  return new analysis();
                                });
                                Navigator.of(context).push(rout);
                              } ,
                              child: new Text(
                                'START ANALYSIS',
                                textAlign: TextAlign.center,
                              )),
                          backgroundColor: Colors.green,
                        ),
                      ),
                      new Container(
                        alignment: Alignment.bottomRight,
                        margin:
                            const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 170.0),
                        child: FloatingActionButton(
                          heroTag: 'btn1',
                          onPressed: null,
                          child: new Icon(Icons.camera_alt),
                          backgroundColor: Colors.green.shade900,
                        ),
                      ),
                      new Container(
                        alignment: Alignment.bottomRight,
                        margin: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 30.0),
                        child: FloatingActionButton(
                          heroTag: 'btn2',
                          onPressed: () {
                            var router = new MaterialPageRoute(builder: (BuildContext context) {
                             return new chat();
                            });
                            Navigator.of(context).push(router);
                          },
                          child: new Icon(Icons.chat),
                          backgroundColor: Colors.green.shade800,
                        ),
                      ),
                      new Container(
                        alignment: Alignment.bottomRight,
                        margin:
                            const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 100.0),
                        child: FloatingActionButton(
                            heroTag: 'btn3',
                          onPressed: () {
                            call();
                          },
                          child: new Icon(Icons.call),
                          backgroundColor: Colors.yellowAccent.shade700,
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  alignment: Alignment.center,
                  child: new Text('weather comes here'),
                ),
                new Container(
                  alignment: Alignment.center,
                  child: new ListView(
                    children: <Widget>[
                      new ListTile(
                        title: new Text('fhiehf'),
                      )
                    ],
                  ),
                ),
              ],
            )
          ]),
        ));
  }
}

call() async {
  await launch('tel:18001801551');
}
