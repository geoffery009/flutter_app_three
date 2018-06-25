import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new ListView(
        children: <Widget>[
          //row 1
          _cMRichText,
          _cMText,
          new Divider(),
          //row2
          new Row(
            children: <Widget>[
              _cMPositionedContainer
            ],
          ),
          new Divider(),
          //row3
          new Container(
            child: new Text("Transform"), padding: new EdgeInsets.all(16.0),),
          //row4
          new Row(children: <Widget>[
            _cMTransform_rotate, _cMTransform_scale
          ],),
          new Divider(),
          //row5
          new Container(child: new Text("decoration渐变--必须依赖于Text存在"),
            padding: new EdgeInsets.all(16.0),),
          _cMGradient_X, _cMGradient_Y,
          new Divider(),
          //row7
          new Container(child: new Text("decoration圆角--必须依赖于Text存在"),
            padding: new EdgeInsets.all(16.0),),
          _cMContainer_circle_border,
          new Divider(),
          //row8
          new Container(child: new Text("decoration阴影--必须依赖于Text存在"),
            padding: new EdgeInsets.all(16.0),),
          _cMContainer_shadow,
          new Divider(),
          //row9
          new Container(child: new Text("decoration形状--必须依赖于Text存在"),
            padding: new EdgeInsets.all(16.0),),
          _cMContainer_shape
        ],
      ),
    );
  }

  var _cMText = new Container(
    child: new Text("Msdfafasdfsefawy Texafgsadfasdfasdfdrt Style",
      style: new TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 6.0,
          color: Colors.brown
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    ),
  );

  var _cMRichText = new Container(
    child: new RichText(
      text: new TextSpan(
          style: new TextStyle(color: Colors.blue),
          children: <TextSpan>[
      new TextSpan(text: "Lorem "),
      new TextSpan(
        text: "ipsum",
        style: new TextStyle(
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.italic,
          fontSize: 48.0,
        ),
      ),
      ],
    ),)

  ,

  );

  var _cMPositionedContainer = new Stack(
    children: <Widget>[
      new Container(color: Colors.red, width: 150.0, height: 150.0,),
      new Positioned(left: 10.0, top: 10.0,
        child: new Container(
          color: Colors.blue, width: 100.0, height: 100.0,
          child: new Center(child: new Text("Positioned"),),),),
    ],
  );

  var _cMTransform_rotate = new Container(
    width: 100.0, height: 100.0, color: Colors.blue,
    child: new Center(
      child: new Transform(
          child: new Text("rotate", style: new TextStyle(color: Colors.white),),
          alignment: Alignment.center,
          transform: new Matrix4.identity()
            ..rotateZ(45 * 3.1415927 / 180)),
    ),
  );
  var _cMTransform_scale = new Container(
    width: 100.0, height: 100.0, color: Colors.red,
    child: new Center(
      child: new Transform(
          child: new Text("scale", style: new TextStyle(color: Colors.white),),
          alignment: Alignment.center,
          transform: new Matrix4.identity()
            ..scale(1.5)),
    ),
  );

  var _cMGradient_X = new Container(
    child: new Center(
      child: new Container( // red box
        child: new Text(
          "Lorem ipsum",
          style: new TextStyle(color: Colors.white),
        ),
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: const Alignment(-1.0, 0.0),
            end: const Alignment(0.6, 0.0),
            colors: <Color>[
              const Color(0xffef5350),
              const Color(0x00ef5350)
            ],
          ),
        ),
        padding: new EdgeInsets.all(16.0),
      ),
    ),
    width: 200.0,
    height: 100.0,
    color: Colors.grey[300],
  );

  var _cMGradient_Y = new Container(
    child: new Center(
      child: new Container( // red box
        child: new Text(
          "Lorem ipsum",
          style: new TextStyle(color: Colors.white),
        ),
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: const Alignment(0.0, -1.0),
            end: const Alignment(0.0, 0.6),
            colors: <Color>[
              const Color(0xffef5350),
              const Color(0x00ef5350)
            ],
          ),
        ),
        padding: new EdgeInsets.all(16.0),
      ),
    ),
    width: 200.0,
    height: 100.0,
    color: Colors.grey[300],
  );
  var _cMContainer_circle_border = new Container(
    child: new Center(
      child: new Container( // red circle
        child: new Text(
          "circle border",
          style: new TextStyle(color: Colors.white),
        ),
        decoration: new BoxDecoration(
          color: Colors.red[400],
          borderRadius: new BorderRadius.all(
            const Radius.circular(8.0),
          ),
        ),
        padding: new EdgeInsets.all(16.0),
      ),
    ),
    width: 200.0,
    height: 100.0,
    color: Colors.grey[300],
  );

  var _cMContainer_shadow = new Container(
    child: new Center(
      child: new Container( // red box
        child: new Text(
          "shadow",
          style: new TextStyle(color: Colors.white),
        ),
        decoration: new BoxDecoration(
          color: Colors.red[400],
          boxShadow: <BoxShadow>[
            new BoxShadow (
              color: const Color(0x80000000),
              offset: new Offset(0.0, 6.0),
              blurRadius: 10.0,
            ),
          ],
        ),
        padding: new EdgeInsets.all(16.0),
      ),
    ),
    width: 200.0,
    height: 100.0,
    decoration: new BoxDecoration(
      color: Colors.grey[300],
    ),
    margin: new EdgeInsets.only(bottom: 16.0),
  );

  var _cMContainer_shape = new Container(
    child: new Center(
      child: new Container( // red circle
        child: new Text(
          "shape",
          style: new TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        decoration: new BoxDecoration(
          color: Colors.red[400],
          shape: BoxShape.circle,
        ),
        padding: new EdgeInsets.all(16.0),
        width: 120.0,
        height: 120.0,
      ),
    ),
    width: 200.0,
    height: 100.0,
    color: Colors.grey[300],
  );
}

