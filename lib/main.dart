import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/*class MyApp extends StatefulWidget{
  @override
  MyAppState
}*/
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String test = "cool";
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            drawer: Drawer(),
            appBar: PreferredSize(
                child: Container(
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.red, Colors.yellow])),
                ),
                preferredSize: Size(double.maxFinite, 60)),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                print('object');
                test = "Even more cool";
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyApp2()));
              },
            ),
            /* body:Row(
          children: <Widget>[
            Text("data"),
            Text("data1"),
            Text("data2")
    ],
          )*/
            body: ListView.builder(
              itemBuilder: (context, index) => Text('$index'),
            )
            /*body:Center(
              child:Text("$test",
                textDirection:TextDirection.ltr,)
          ),*/
            ));
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return null;
  }
  //jansariParth --twitter
  //parth181195 --github
}
