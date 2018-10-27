import 'package:flutter/material.dart';
import 'result.dart';
import 'agro.dart';

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
          backgroundColor: Colors.yellow.shade700,
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
            new Container(
              margin: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
              child: new Text("Select the crops you wish to convert to : ",style: TextStyle(fontSize: 25.0,color: Colors.brown),),
            ),
            new Container(
                margin: const EdgeInsets.fromLTRB(30.0, 80.0, 30.0, 0.0),
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
                                      "https://cdn.shopify.com/s/files/1/1078/0310/products/fruit-banana-dole-1_1024x1024.jpg?v=1500709708")
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
                                      "https://cdn.britannica.com/s:300x300/95/129395-004-8A3BDC15.jpg")
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
                                      "https://4.imimg.com/data4/OR/KI/MY-1432329/jute-cloth-500x500.jpg")
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
                                      "https://4.imimg.com/data4/OR/KI/MY-1432329/jute-cloth-500x500.jpg")
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
                                      "https://www.thehindu.com/migration_catalog/article15635326.ece/alternates/FREE_660/TH04BETEL-BRSC")
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
                                      "http://demandware.edgesuite.net/sits_pod32/dw/image/v2/BBBW_PRD/on/demandware.static/-/Sites-jss-master/default/dw625729c3/images/products/flowers/01712_01_procutorange.jpg?sw=387&cx=302&cy=0&cw=1196&ch=1196")
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
              child: FloatingActionButton(
                backgroundColor: Colors.amber,
                  child: new Text("SUBMIT",textAlign: TextAlign.center,style: TextStyle(fontSize: 11.0),),
                  onPressed: () {
                    var ro =
                        new MaterialPageRoute(builder: (BuildContext context) {
                      return new result();
                    });
                    Navigator.of(context).push(ro);
                  }),
            )
          ],
        ));
  }
}
