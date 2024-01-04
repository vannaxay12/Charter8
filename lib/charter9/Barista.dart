import 'package:flutter/material.dart';

class barista_card extends StatefulWidget {
  const barista_card({super.key});

  @override
  State<barista_card> createState() => _barista_cardState();
}

class _barista_cardState extends State<barista_card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Card(
        elevation: 8.0,
        color: Colors.white,
        margin: EdgeInsets.all(20.0),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            SizedBox(height:10 ,),
            Container(margin: EdgeInsets.all(10.0),
                height: 100,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(0), color: Colors.white,boxShadow:[BoxShadow(color: Colors.black,blurRadius: 5,offset: Offset(8,8)),],),
                child: Column(children: [
                  Text(
                    'Barista',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 48.0,
                      color: Colors.orange,
                    ),
                  ),
                  Text(
                    'Travel Plans',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ])), //
            Text("DEFAULT",
                style: TextStyle(fontSize: 40, color: Colors.black)),
 SizedBox(height:10 ,),
            Container(margin: EdgeInsets.all(10.0),
                height: 100,
                alignment: Alignment.topCenter,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40.0),color: Colors.white),
                    
                child: Column(children: [
                  Text(
                    'Barista',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 48.0,
                      color: Colors.orange,
                    ),
                  ),
                  Text(
                    'Travel Plans',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ])),
            Text("StadiumBorder",
                style: TextStyle(fontSize: 40, color: Colors.black)),
                 SizedBox(height:10 ,),
            Container(margin: EdgeInsets.all(10.0),
                height: 100,
                alignment: Alignment.topCenter,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10),       border: Border(bottom: BorderSide(width: 3,color: Colors.orange))),
                child: Column(children: [
                  Text(
                    'Barista',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 48.0,
                      color: Colors.orange,
                    ),
                  ),
                  Text(
                    'Travel Plans',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ])),
            Text("UnderlineInputBorder",
                style: TextStyle(fontSize: 40, color: Colors.black)),
 SizedBox(height:10 ,),
            Container(margin: EdgeInsets.all(10.0),
                height: 100,
                alignment: Alignment.topCenter,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10),border:Border.all(width:2,color:Colors.orange,),),
                child: Column(children: [
                  Text(
                    'Barista',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 48.0,
                      color: Colors.orange,
                    ),
                  ),
                  Text(
                    'Travel Plans',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ])),
            Text("OutlineinputBorder",
                style: TextStyle(fontSize: 40, color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
