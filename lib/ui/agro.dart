import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_database/firebase_database.dart';
import '../models/model.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

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
                              onPressed: null,
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
                          onPressed: null,
                          child: new Icon(Icons.camera_alt),
                          backgroundColor: Colors.green.shade900,
                        ),
                      ),
                      new Container(
                        alignment: Alignment.bottomRight,
                        margin: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 30.0),
                        child: FloatingActionButton(
                          heroTag: 'btn1',
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

class chat extends StatefulWidget {
  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
  List<Board> boardMessages = List();
  Board board;
  final FirebaseDatabase database = FirebaseDatabase.instance;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  DatabaseReference databseReference;

  @override
  void initState() {
    super.initState();
    board = new Board("", "");
    databseReference = database.reference().child("community_board");
    databseReference.onChildAdded.listen(_onEntryAdded);
    databseReference.onChildChanged.listen(_onEntryChanged);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('AgroGo'),
        backgroundColor: Colors.green.shade800,
      ),

      body: Column(
        children: <Widget>[
          Flexible(
            flex: 0,
            child: Center(
              child: Flex(
                key: formKey,
                direction: Axis.vertical,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.subject),
                    title: TextFormField(
                      initialValue: "",
                      onSaved: (val) => board.subject = val,
                      validator: (val) => val == "" ? val : null,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.message),
                    title: TextFormField(
                      initialValue: "",
                      onSaved: (val) => board.body = val,
                      validator: (val) => val == "" ? val : null,
                    ),
                  ),
                  FlatButton(
                    child: Text("Post"),
                    onPressed: () {
                      handleSubmit();
                    },
                    color: Colors.green.shade800,
                  )
                ],
              ),
            ),
          ),
          Flexible(
            child: FirebaseAnimatedList(
              query: databseReference,
              itemBuilder: (_, DataSnapshot snapshot,
                  Animation<double> animation, int index) {
                return new Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                    ),
                    title: Text(boardMessages[index].subject),
                    subtitle: Text(boardMessages[index].body),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void _onEntryAdded(Event event) {
    setState(() {
      boardMessages.add(Board.fromSnapshot(event.snapshot));
    });
  }

  void handleSubmit() {
    final FormState form = formKey.currentState;
    if (form.validate()) {
      form.save();
      form.reset();

      databseReference.push().set(board.toJson());
    }
  }

  void _onEntryChanged(Event event) {
    var oldEntry = boardMessages.singleWhere((entry){
      return entry.key == event.snapshot.key;
    });

    setState(() {
      boardMessages[boardMessages.indexOf(oldEntry)] =
          Board.fromSnapshot(event.snapshot);
    });
  }
}


call() async {
  await launch('tel:18001801551');
}
