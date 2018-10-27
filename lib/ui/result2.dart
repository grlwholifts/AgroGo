import 'package:flutter/material.dart';
import 'agro.dart';

class result extends StatefulWidget {
  @override
  _resultState createState() => _resultState();
}

class _resultState extends State<result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("AgroGo"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                var tak =
                new MaterialPageRoute(builder: (BuildContext context) {
                  return new Agro();
                });
                Navigator.of(context).push(tak);
              })
        ],
      ),

      body: new Stack(
        children: <Widget>[
          new Center(
            child: new Image.asset('images/bg.jpg',fit: BoxFit.fill,height: 1200.0,),
          ),


          new Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
            child: new Text("Profit Comparison",style: TextStyle(color: Colors.white,fontSize: 38.0),),
          ),
          new Container(
            margin: const EdgeInsets.fromLTRB(10.0, 60.0, 10.0, 0.0),
            child: new ListView(
              children: <Widget>[
                new ListTile(
                  title: new Text("Market Price",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                ),
                new ListTile(
                  title: new Card(
                    child: Padding(padding: const EdgeInsets.all(20.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Paddy', style: new TextStyle(color: Colors.black, fontSize: 24.0)),
                            Text('Market Price:',  style: new TextStyle(color: Colors.black)),
                            Text('1760/quintal', style: new TextStyle(color: Colors.orange, fontSize: 20.0)),
                          ],
                        )),
                  ),
                ),
                new ListTile(
                  title: new Card(
                    child: Padding(padding: const EdgeInsets.all(20.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Banana', style: new TextStyle(color: Colors.black, fontSize: 24.0)),
                            Text('Market Price:',  style: new TextStyle(color: Colors.black)),
                            Text('5825/quintal', style: new TextStyle(color: Colors.green, fontSize: 20.0)),
                          ],
                        )),
                  ),
                ),

                new ListTile(
                  title: new Text("Total cost of Production",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                ),

                new ListTile(
                  title: new Card(
                    child: Padding(padding: const EdgeInsets.all(20.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Paddy', style: new TextStyle(color: Colors.black, fontSize: 24.0)),
                            Text('Production:',  style: new TextStyle(color: Colors.black)),
                            Text('83683', style: new TextStyle(color: Colors.orange, fontSize: 20.0)),
                          ],
                        )),
                  ),
                ),
                new ListTile(
                  title: new Card(
                    child: Padding(padding: const EdgeInsets.all(20.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Banana', style: new TextStyle(color: Colors.black, fontSize: 24.0)),
                            Text('Cost of Production:',  style: new TextStyle(color: Colors.black)),
                            Text('56000', style: new TextStyle(color: Colors.green, fontSize: 20.0)),
                          ],
                        )),
                  ),
                ),

                new ListTile(
                  title: new Text("Machinery",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                ),

                new ListTile(
                  title: new Card(
                    child: Padding(padding: const EdgeInsets.all(20.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Paddy', style: new TextStyle(color: Colors.black, fontSize: 24.0)),
                            Text('Cost of Machinery:',  style: new TextStyle(color: Colors.black)),
                            Text('10871', style: new TextStyle(color: Colors.orange, fontSize: 20.0)),
                          ],
                        )),
                  ),
                ),
                new ListTile(
                  title: new Card(
                    child: Padding(padding: const EdgeInsets.all(20.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Banana', style: new TextStyle(color: Colors.black, fontSize: 24.0)),
                            Text('Cost of Machinery',  style: new TextStyle(color: Colors.black)),
                            Text('8234', style: new TextStyle(color: Colors.green, fontSize: 20.0)),
                          ],
                        )),
                  ),
                ),
                new ListTile(
                  title: new Text("Seeding",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                ),

                new ListTile(
                  title: new Card(
                    child: Padding(padding: const EdgeInsets.all(20.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Paddy', style: new TextStyle(color: Colors.black, fontSize: 24.0)),
                            Text('Cost of Seeding:',  style: new TextStyle(color: Colors.black)),
                            Text('7844', style: new TextStyle(color: Colors.orange, fontSize: 20.0)),
                          ],
                        )),
                  ),
                ),
                new ListTile(
                  title: new Card(
                    child: Padding(padding: const EdgeInsets.all(20.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Banana', style: new TextStyle(color: Colors.black, fontSize: 24.0)),
                            Text('Cost of Seeding',  style: new TextStyle(color: Colors.black)),
                            Text('8000', style: new TextStyle(color: Colors.green, fontSize: 20.0)),
                          ],
                        )),
                  ),
                ),

                new ListTile(
                  title: new Text("Fertilizers and Manures",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                ),

                new ListTile(
                  title: new Card(
                    child: Padding(padding: const EdgeInsets.all(20.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Paddy', style: new TextStyle(color: Colors.black, fontSize: 24.0)),
                            Text('Cost of Fertilizers and Manures:',  style: new TextStyle(color: Colors.black)),
                            Text('8180', style: new TextStyle(color: Colors.orange, fontSize: 20.0)),
                          ],
                        )),
                  ),
                ),
                new ListTile(
                  title: new Card(
                    child: Padding(padding: const EdgeInsets.all(20.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Banana', style: new TextStyle(color: Colors.black, fontSize: 24.0)),
                            Text('Cost of Fertizers and Manures',  style: new TextStyle(color: Colors.black)),
                            Text('10342', style: new TextStyle(color: Colors.green, fontSize: 20.0)),
                          ],
                        )),
                  ),
                ),
                new ListTile(
                  title: new Text("Human Labour",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                ),

                new ListTile(
                  title: new Card(
                    child: Padding(padding: const EdgeInsets.all(20.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Paddy', style: new TextStyle(color: Colors.black, fontSize: 24.0)),
                            Text('Cost of Human Labour:',  style: new TextStyle(color: Colors.black)),
                            Text('36327', style: new TextStyle(color: Colors.orange, fontSize: 20.0)),
                          ],
                        )),
                  ),
                ),
                new ListTile(
                  title: new Card(
                    child: Padding(padding: const EdgeInsets.all(20.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Banana', style: new TextStyle(color: Colors.black, fontSize: 24.0)),
                            Text('Cost of Human Labour',  style: new TextStyle(color: Colors.black)),
                            Text('6000', style: new TextStyle(color: Colors.green, fontSize: 20.0)),
                          ],
                        )),
                  ),
                ),


              ],
            ),
          )

        ],
      ),

    );
  }
}
