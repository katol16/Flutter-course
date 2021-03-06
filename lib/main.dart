import 'package:flutter/material.dart';

// Zrobimy to po swojemu od nowa, dlatego ponizszy kod jest zakomentowany

void main() => runApp(MaterialApp(
  // wewnątrz tego widgeta możemy sprecyzować różne properties
  // home: Text('hey ninjas!'),

  // Będziesz tutaj używał wielu wbudowanych widgetów, np Scaffold, AppBar
  // Pamietaj, że nazwy Wdgetóœ zaczynają się z dużej mamy tu konwencje CamelCase
  home: Home()
));

// Root widget is MyApp
// void main() => runApp(MyApp());

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return Scaffold(
//      appBar: AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: Text(widget.title),
//      ),
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: Column(
//          // Column is also a layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug painting" (press "p" in the console, choose the
//          // "Toggle Debug Paint" action from the Flutter Inspector in Android
//          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//          // to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}


// Staless wigdet for hot reloding
class Home extends StatelessWidget {
  // to verride oznacza nadpisane tego StalessWigdet
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),

      // Poniżej będzie tekst ale z lewej
      // body: Text("Hello Ninjas"),

      // w Row, mozmey trzymac kilka elementów (wdigetow) w jednej lini, dlatego bedzie "children"

      body:
        Row(
          children: <Widget>[
            // Pamiętaj, ze Expanded widget dobrze też używć do obrazków
            Expanded(
              child: Image.asset('assets/img.jpeg'),
              flex: 3,
            ),
            Expanded(
              // za pomocą felxa ustaiwmy szerokosc danego elementu
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.cyan,
                child: Text('1'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.amber,
                child: Text('2'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.red,
                child: Text('3'),
              ),
            ),
          ],
        ),


//    Przykład z expanded Widgets
//        Row(
//          children: <Widget>[
//            // Za pomocą Expanded widget, zajmą całą dostępną przestrzeń w Row
//            // W poniższym przykładzie będą miały wszysktie taką samą szerokość
//            Expanded(
//              child: Container(
//                padding: EdgeInsets.all(30),
//                color: Colors.cyan,
//                child: Text('1'),
//              ),
//            ),
//            Expanded(
//              child: Container(
//                padding: EdgeInsets.all(30),
//                color: Colors.amber,
//                child: Text('2'),
//              ),
//            ),
//            Expanded(
//              child: Container(
//                padding: EdgeInsets.all(30),
//                color: Colors.red,
//                child: Text('3'),
//              ),
//            ),
//          ],
//        ),


//      Row(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Text('Hello world'),
//          FlatButton(
//            onPressed: (){},
//            color: Colors.amber,
//            child: Text('Click me')
//          ),
//          Container(
//            color: Colors.cyan,
//            padding: EdgeInsets.all(30),
//            child: Text('Inside container')
//          ),
//        ]
//      ),


//    Teraz przykłąd z kolumną
//        Column(
//          mainAxisAlignment: MainAxisAlignment.end,
//          crossAxisAlignment: CrossAxisAlignment.end,
//          children: <Widget>[
//            Row(
//              children: <Widget>[
//                Text('Hello'),
//                Text('world'),
//              ],
//            ),
//            Container(
//              padding: EdgeInsets.all(20),
//              color: Colors.cyan,
//              child: Text('one'),
//            ),
//            Container(
//              padding: EdgeInsets.all(30),
//              color: Colors.red,
//              child: Text('two'),
//            ),
//            Container(
//              padding: EdgeInsets.all(40),
//              color: Colors.blueAccent,
//              child: Text('three'),
//            ),
//          ],
//        ),

      // A tutaj wycentrujemy nasz tekst
//      body:
////      Przykład z Containerem
//        // Container jest czymś w rodzaju wrappera dla inncyh widgetow
//        Container(
//          color: Colors.grey[400],
//          // Jeśli nie damy tutaj dziecka (child). to contaienr bedzie na całej powierzchni body
//          // Kiedy dodamy dziecko (child) contaienr będzie obejmował tylko to dziecko, wiec szare tło bedzie tylko na napisie
//          child: Text('Hello'),
//
//          // dodamy poniżej troche paddingu
//          padding: EdgeInsets.all(20.0),
//          // inna opcja na padding
//          // padding: EdgeInsets.fromLTRB(10, 20, 30, 10)
//
//          margin: EdgeInsets.all(30.0),
//        ),


      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),

//      Center(
//        child:
          // Przykłąd z icons
//          Icon(
//            Icons.airport_shuttle,
//            color: Colors.lightBlue,
//            size: 50.0,
//          ),


          // Przykład z Buttonem
//          RaisedButton(
//            onPressed: () {
//              print('You clicked me');
//            },
//            child: Text('click me'),
//            color: Colors.lightBlue,
//          ),


          // Button z icon
//          RaisedButton.icon(
//            onPressed: () {},
//            icon: Icon(
//              Icons.mail
//            ),
//            label: Text('mail me'),
//            color: Colors.amber,
//          )


          // Icon Button - ikona na którą można kilkać, bo zahcowuje sie jak button
//          IconButton(
//            onPressed: () {
//              print('You clicked me');
//            },
//            icon:  Icon(Icons.alternate_email),
//            color: Colors.amber
//          ),


          // Przykłąd z obrazkiem loklanym
//            Image(
//              image: AssetImage('assets/img.jpeg'),
//            )
          // Skrócona wersja tego powyżej, czyli z loklanym obrazkiem
          //  Image.asset('assets/img.jpeg'),


          // Przykład z obrazkiem z neta
//        Image(
//          image: NetworkImage('https://images.unsplash.com/photo-1577611984761-07328c2b0d83?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
//        )
          // Skrócona wersja tego powyżej z network
          //  Image.network('https://images.unsplash.com/photo-1577611984761-07328c2b0d83?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')


          // Przykłąd z tekstem
//        Text(
//          "Hello Ninjas",
//          style: TextStyle(
//            fontSize: 20,
//            fontWeight: FontWeight.bold,
//            letterSpacing: 2,
//            color: Colors.grey[600],
//            fontFamily: 'MaShan',
//          ),
//        ),

    );
  }
}
