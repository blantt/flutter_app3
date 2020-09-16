import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:flutter_app3/tt1.dart';
import  'package:flutter_app3/helpers/Constants.dart';

void main() {
  debugPaintSizeEnabled = false;      //打开视觉调试开关
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: '這是我第一隻flutter,請多指教!'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Friends('Jerry'),
            Friends('Mary'),
            Friends('Polly'),
            Friends('Jay'),
            Friends('Tony'),

        new GestureDetector(
          onTap: () {
            print("ok11");
          },
          // Our Custom Button!
          child: Container(
            padding: const EdgeInsets.all(10.0),
            width: 414,
            height: 100,
            child: Text(
              'abc',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.deepOrange
              ),
            ),
          ),
        ),

            new Row(                                                                     //Row控件使其子控件横向排列
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Icon(Icons.star, color: Colors.lightBlue),
                      new Icon(Icons.star, color: Colors.lightBlue)
                    ]
                ),

                new Row(
                  mainAxisSize: MainAxisSize.min,       //mainAxisSize，可压缩或伸长行内控件的间距

                  children: [
                    Padding(
                      //左边添加8像素补白
                      padding: const EdgeInsets.only(left: 50),
                      child: Text("Hello world"),
                    ),

                    new Icon(Icons.star, color: Colors.amberAccent),
                    new Icon(Icons.star, color: Colors.amberAccent),
                    new Icon(Icons.star, color: Colors.amberAccent),
                    new Icon(Icons.star, color: Colors.amberAccent),
                    new Icon(Icons.star, color: Colors.amberAccent),
                  ],
                ),


              ],

            ),


            Image.asset('abc/dog1.jpg'
              ,width: 100,
            ),

            Text('my name is blantt'
              ,style: TextStyle(fontSize: 25,color:Colors.lightBlue),
            ),

            Image.asset('abc/add.png'),

            new IconButton(
              icon: new Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),

            new Text(
              'i am Blantt',
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Colors.deepOrange),
            ),

            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}