import 'package:flutter/material.dart';
import 'package:rentappgt/views/uber_details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Product'
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void nextStep(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 370.00,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  child: Image.asset(
                    'assets/map.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              backgroundColor: Colors.black,
            ),
          ];
        },
        body: Center(
          child: Column(
            children: <Widget>[
               ListTile(
                  title: Text('Buenos días, Machete',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  subtitle: Divider(
                    height: 15.0,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      child:  TextField(
    autofocus: false,
    style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey[300],
      labelText: 'A dónde vas?',
      labelStyle: TextStyle(color: Colors.black, fontSize: 18.00),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey[300]),
        borderRadius: BorderRadius.vertical(),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey[300]),
        borderRadius: BorderRadius.vertical(),
      ),
    ),
  ),
                    ),

                                        ListTile(
                      leading: Icon(Icons.place),
                      title: Text('Hospital de Enfermedades, IGSS'),
                      subtitle: Text('9A Calle'),
                      onTap: nextStep,
                    ),
                    ListTile(
                      leading: Icon(Icons.place),
                      title: Text('Estadio Nacional Doroteo Guamuch Flores'),
                      subtitle: Text('9A Calle'),
                    ),
                  ],
                ),
            ],
          ),
        )
      ),
    );
  }
}
