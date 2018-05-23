import 'package:flutter/material.dart';


void main() {
  runApp(new MaterialApp(title: 'Zoo', home: new Zoo()));
}



class Zoo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(backgroundColor: const Color(0xff00e5ff),
          title: new Text('Zoo')),
      body: new Center(child: new Text('MAPA')),
      drawer: new Drawer(

        child: new ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            new DrawerHeader(
              child: new Text('Configurações'),
              decoration: new BoxDecoration(
                  color: const Color(0xff00e5ff)
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.accessible_forward),
              title: new Text('Modo Acessibilidade'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new aaa()),
                );


              },
            ),
            new ListTile(
              title: new Text('Rotas'),
              onTap: () {

                Navigator.pop(context);
              },
            ),
            new ListTile(
              title: new Text('Contato'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            new ListTile(
              title: new Text('Desenvolvedor'),
              onTap: () {
               Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new bbb()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class aaa extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(backgroundColor: const Color(0xff00e5ff),
          title: new Text('Zoo')),
      body: new Center(child: new Text('Em andamento')),

    );
  }
}

class bbb extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(backgroundColor: const Color(0xff00e5ff),
          title: new Text('Zoo')),
      body:
      new DecoratedBox(
      decoration: new BoxDecoration(
      image: new DecorationImage(
      image: new AssetImage('images/fuba.png'),

    ),

    ),
    )
      );


  }
}