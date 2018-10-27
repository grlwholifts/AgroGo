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
              backgroundColor: Colors.yellow.shade700,
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
              new TabBarView(children: [
                new Container(
                  alignment: Alignment.center,
                  child: new Stack(
                    children: <Widget>[
                      new Center(
                        child: new Image.asset(
                          'images/fields.jpg',
                          fit: BoxFit.fill,
                          height: 1000.0,
                          width: 550.0,
                        ),
                      ),
                      new Container(
                        margin: const EdgeInsets.fromLTRB(30.0, 30.0, 0.0, 0.0),
                        child: new Text(
                          "AgroGo",
                          style: TextStyle(
                              fontSize: 80.0,
                              color: Colors.white,
                              fontFamily: 'open sans'),
                        ),
                      ),
                      new Container(
                        margin:
                            const EdgeInsets.fromLTRB(30.0, 130.0, 0.0, 0.0),
                        child: new Text(
                          "From Food to Commercial",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.lightBlue,
                              fontFamily: 'open sans'),
                        ),
                      ),
                      new Container(
                        margin:
                            const EdgeInsets.fromLTRB(30.0, 160.0, 0.0, 0.0),
                        child: new Text(
                          "Cost and Risk Analysis",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.lightBlueAccent,
                              fontFamily: 'open sans'),
                        ),
                      ),
                      new Container(
                        alignment: Alignment.bottomLeft,
                        margin:
                            const EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 90.0),
                        child: new CircleAvatar(
                          radius: 60.0,
                          child: new FlatButton(
                              onPressed: () {
                                var rout = new MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return new analysis();
                                });
                                Navigator.of(context).push(rout);
                              },
                              child: new Text(
                                'START ANALYSIS',
                                textAlign: TextAlign.center,
                              )),
                          backgroundColor: Colors.yellow.shade700,
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
                            backgroundColor: Colors.yellow.shade700),
                      ),
                      new Container(
                        alignment: Alignment.bottomRight,
                        margin: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 30.0),
                        child: FloatingActionButton(
                          heroTag: 'btn2',
                          onPressed: () {
                            var router = new MaterialPageRoute(
                                builder: (BuildContext context) {
                              return new chat();
                            });
                            Navigator.of(context).push(router);
                          },
                          child: new Icon(Icons.chat),
                          backgroundColor: Colors.brown,
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
                          backgroundColor: Colors.yellow.shade900,
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Text('Delhi',
                                      style:
                                          new TextStyle(color: Colors.brown)),
                                  Text('Sunny',
                                      style: new TextStyle(
                                          color: Colors.brown, fontSize: 32.0)),
                                  Text('32-19°C',
                                      style:
                                          new TextStyle(color: Colors.brown)),
                                  Image.network(
                                      'https://openweathermap.org/img/w/01d.png'),
                                  Text('Oct 27, 2018',
                                      style:
                                          new TextStyle(color: Colors.brown)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          icon: new Icon(Icons.refresh),
                          tooltip: 'Refresh',
                          onPressed: () => null,
                          color: Colors.brown,
                        ),
                      ),
                      SafeArea(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200.0,
                          child: new ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Delhi',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                      Text('Sunny',
                                          style: new TextStyle(
                                              color: Colors.black,
                                              fontSize: 24.0)),
                                      Text('31-17°C',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                      Image.network(
                                          'https://openweathermap.org/img/w/01d.png'),
                                      Text('Oct 28, 2018',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                    ],
                                  )),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Delhi',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                      Text('Sunny',
                                          style: new TextStyle(
                                              color: Colors.black,
                                              fontSize: 24.0)),
                                      Text('31-19°C',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                      Image.network(
                                          'https://openweathermap.org/img/w/01d.png'),
                                      Text('Oct 29, 2018',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                    ],
                                  )),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Delhi',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                      Text('Cloudy',
                                          style: new TextStyle(
                                              color: Colors.black,
                                              fontSize: 24.0)),
                                      Text('30-18°C',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                      Image.network(
                                          'https://openweathermap.org/img/w/01d.png'),
                                      Text('Jun 30, 2018',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                    ],
                                  )),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Delhi',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                      Text('Sunny',
                                          style: new TextStyle(
                                              color: Colors.black,
                                              fontSize: 24.0)),
                                      Text('29-18°C',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                      Image.network(
                                          'https://openweathermap.org/img/w/01d.png'),
                                      Text('Oct 31, 2018',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                    ],
                                  )),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Delhi',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                      Text('Sunny',
                                          style: new TextStyle(
                                              color: Colors.black,
                                              fontSize: 24.0)),
                                      Text('31-18°C',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                      Image.network(
                                          'https://openweathermap.org/img/w/01d.png'),
                                      Text('Nov 1, 2018',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                    ],
                                  )),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Delhi',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                      Text('Sunny',
                                          style: new TextStyle(
                                              color: Colors.black,
                                              fontSize: 24.0)),
                                      Text('31-19°C',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                      Image.network(
                                          'https://openweathermap.org/img/w/01d.png'),
                                      Text('Nov 2, 2018',
                                          style: new TextStyle(
                                              color: Colors.black)),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Container(
                        height: 60.0,
                        color: Colors.indigo,
                        child: Text(
                          "Maximum Farming Production in India",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ),
                      new RaisedButton(
                        child: new Text("Watch  Video"),
                        onPressed: launchURL,
                        color: Colors.red,
                      ),
                      Container(
                        height: 60.0,
                        color: Colors.blue,
                        child: Text(
                          "Comparative analysis of farmers in India Vs California",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ),
                      new RaisedButton(
                        child: new Text("Watch  Video"),
                        onPressed: launchURL,
                        color: Colors.red,
                      ),
                      Container(
                        height: 60.0,
                        color: Colors.green,
                        child: Text(
                          "Modern Dairy Farm in INDIA ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ),
                      new RaisedButton(
                          child: new Text("Watch  Video"),
                          onPressed: launchURL,
                          color: Colors.red),
                      Container(
                        height: 60.0,
                        color: Colors.yellow,
                        child: Text(
                          "agricultural problems of Indian farmers",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ),
                      new RaisedButton(
                        child: new Text("Watch  Video"),
                        onPressed: launchURL,
                        color: Colors.red,
                      ),
                      Container(
                        height: 60.0,
                        color: Colors.green,
                        child: Text(
                          "Zero Cost Formula For Organic Farmin",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ),
                      new RaisedButton(
                        child: new Text("Watch  Video"),
                        onPressed: launchURL,
                        color: Colors.red,
                      ),
                      Container(
                        height: 60.0,
                        color: Colors.blue,
                        child: Text(
                          "जैविक खेती",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ),
                      new RaisedButton(
                        child: new Text("Watch  Video"),
                        onPressed: launchURL,
                        color: Colors.red,
                      ),
                      Container(
                        height: 60.0,
                        color: Colors.green,
                        child: Text(
                          "वेस्ट डी कंपोजर",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ),
                      new RaisedButton(
                        child: new Text("Watch  Video"),
                        onPressed: launchURL,
                        color: Colors.red,
                      ),
                      Container(
                        height: 60.0,
                        color: Colors.yellow,
                        child: Text(
                          "Preparing Vermicompost | केंचुवा खाद बनाने की विधि",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ),
                      new RaisedButton(
                        child: new Text("Watch  Video"),
                        onPressed: launchURL,
                        color: Colors.red,
                      ),
                      Container(
                        width: 60.0,
                        color: Colors.orange,
                        child: Text(
                          "गोबर की शक्तिशाली खाद",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ),
                      new RaisedButton(
                        child: new Text("Watch  Video"),
                        onPressed: launchURL,
                        color: Colors.red,
                      ),
                      Container(
                        height: 60.0,
                        color: Colors.blue,
                        child: new Text(
                            "रवी मौसम में लगने वाला हरा चारा, Berseem Green Fodder,"),
                      ),
                      new RaisedButton(
                        child: new Text("Watch  Video"),
                        onPressed: launchURL,
                        color: Colors.red,
                      ),
                      Container(
                        height: 60.0,
                        color: Colors.green,
                        child: new Text("Fertilizer Seed & Pesticides License"),
                      ),
                      new RaisedButton(
                        child: new Text("Watch  Video"),
                        onPressed: launchURL,
                        color: Colors.red,
                      ),
                      Container(
                        height: 60.0,
                        color: Colors.yellow,
                      ),
                      new RaisedButton(
                        child: new Text("Watch  Video"),
                        onPressed: launchURL,
                        color: Colors.red,
                      ),
                      Container(
                        width: 60.0,
                        color: Colors.orange,
                      ),
                      new RaisedButton(
                        child: new Text("Watch  Video"),
                        onPressed: launchURL,
                        color: Colors.red,
                      ),
                      Container(
                        height: 60.0,
                        color: Colors.blue,
                      ),
                      new RaisedButton(
                        child: new Text("Watch  Video"),
                        onPressed: launchURL,
                        color: Colors.red,
                      ),
                      Container(
                        height: 160.0,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 60.0,
                        color: Colors.green,
                      ),
                      Container(
                        height: 60.0,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.orange,
                      ),
                      Container(
                        height: 160.0,
                        color: Colors.red,
                      ),
                      Container(
                        height: 160.0,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 160.0,
                        color: Colors.green,
                      ),
                      Container(
                        height: 160.0,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.orange,
                      ),
                      Container(
                        height: 160.0,
                        color: Colors.red,
                      ),
                      Container(
                        height: 160.0,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 160.0,
                        color: Colors.green,
                      ),
                      Container(
                        height: 160.0,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
              ]),
            ])));
  }
}

launchURL() async {
  const url = 'https://www.youtube.com/watch?v=vyMH1FIz9rc';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

call() async {
  await launch('tel:18001801551');
}
