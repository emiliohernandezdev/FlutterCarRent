import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 390.00,
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
            body: GestureDetector(
              onVerticalDragStart: (e){
                print(e);
              },
              child: Center(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                        'Elige un viaje o desliza hacia arriba para conocer más',
                        style: TextStyle(fontSize: 12.0),
                        textAlign: TextAlign.center),
                    subtitle: Divider(
                      height: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        color: Colors.lightBlue[50],
                        child: ListTile(
                          leading: Image.asset(
                              'assets/uberx.png'),
                          title: Row(
                            children: <Widget>[
                              Text('UberX', style: TextStyle(fontSize: 18.00)),
                              Icon(Icons.person, size: 18),
                              Text('4')
                            ],
                          ),
                          subtitle: Text('Oscar Pérez'),
                          trailing: Text('Q 75.50'),
                        ),
                      ),
                      Container(
                        child: DropdownButton<String>(
                          value: 'Efectivo',
                          icon: Icon(Icons.monetization_on),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(color: Colors.grey),
                          underline: Container(
                            height: 2,
                            color: Colors.grey[300],
                          ),
                          onChanged: (String newValue) {},
                          items: <String>['Efectivo', 'Tarjeta de crédito']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      MaterialButton(
                        color: Colors.black,
                        textColor: Colors.white,
                        child: Text('CONFIRMAR UBERX'),
                        onPressed: (){

                        },
                      )
                    ],
                  )
                ],
              ),
            ),
            ),
            
));
  }
}
