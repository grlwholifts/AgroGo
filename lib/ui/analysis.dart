import 'package:flutter/material.dart';
import 'analysis2.dart';
import 'agro.dart';

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
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  var take =
                      new MaterialPageRoute(builder: (BuildContext context) {
                    return new Agro();
                  });
                  Navigator.of(context).push(take);
                })
          ],
          backgroundColor: Colors.yellow.shade700,
        ),
        body: new Stack(
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
              child: new Text("Select the crops grown by you : ",style: TextStyle(fontSize: 25.0,color: Colors.brown),),
            ),
            new Container(
                margin: const EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
                child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                    children: <Widget>[
                      new Container(
                          width: 190.0,
                          height: 190.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://5.imimg.com/data5/YV/CK/MY-41527404/organic-paddy-seed-500x500-500x500.jpg")
                              )
                          )),
                      new Container(
                          width: 190.0,
                          height: 190.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "http://www.botswanaguardian.co.bw/media/k2/items/cache/e4559044766b9b537a51a03a16c9872a_XL.jpg")
                              )
                          )),
                      new Container(
                          width: 190.0,
                          height: 190.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "http://cdn.differencebetween.net/wp-content/uploads/2010/09/800px-A_closeup_scene_of_wheat..jpg")
                              )
                          )),
                      new Container(
                          width: 190.0,
                          height: 190.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://i2.wp.com/sahajaaharam.in/wp-content/uploads/2017/06/yellow-jowar.jpg?fit=898%2C898")
                              )
                          )),
                      new Container(
                          width: 190.0,
                          height: 190.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://www.commodityonline.com/uploads/b2b-lead-images/2018/Feb/maize-8501279223.jpg")
                              )
                          )),
                      new Container(
                          width: 190.0,
                          height: 190.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      ""
                                          "http://www.mozzo.in/media/catalog/product/cache/1/image/1200x/217b239dffd5bb356371675def5deb47/a/r/arhar-pulses.jpg")
                              )
                          )),
                      new Container(
                          width: 190.0,
                          height: 190.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Mustard_plant_bangladesh.jpg/1200px-Mustard_plant_bangladesh.jpg")
                              )
                          )),
                      new Container(
                          width: 190.0,
                          height: 190.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://5.imimg.com/data5/LW/LM/MY-8481118/urad-dal-500x500.jpg")
                              )
                          )),
                      new Container(
                          width: 190.0,
                          height: 190.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://4.imimg.com/data4/MT/EM/MY-26074937/whole-ragi-500x500.jpg")
                              )
                          )),
                      new Container(
                          width: 190.0,
                          height: 190.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://www.commodityonline.com/uploads/b2b-lead-images/2018/Feb/groundnut-1177244782.jpg")
                              )
                          )),
                      new Container(
                          width: 190.0,
                          height: 190.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://cdn1.medicalnewstoday.com/content/images/hero/265/265990/265990_1100.jpg")
                              )
                          )),

                    ])),
            new Container(
              alignment: Alignment.bottomRight,
              margin: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 20.0),
              child: new FloatingActionButton(
                onPressed: () {
                  var rou =
                      new MaterialPageRoute(builder: (BuildContext context) {
                    return new analysi();
                  });
                  Navigator.of(context).push(rou);
                },
                child: new Text("NEXT"),
                backgroundColor: Colors.amber,
              ),
            )
          ],
        ));
  }
}
