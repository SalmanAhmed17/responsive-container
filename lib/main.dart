import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Salman'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    // body: Container(
    //   width: double.infinity,
    //   height: 300,
    //   color: Colors.red,
    //   alignment: Alignment.center,
    //   child: AspectRatio(
    //     aspectRatio: 16/9,
    //     child: Container(
    //       color: Colors.green),
    //   ),
    // ),
    // body: Center(
    //   child: FractionallySizedBox(
    //     widthFactor: 0.5, 
    //     heightFactor: 0.3, 
    //     child: Container(
    //       color: Colors.green),
    //       ),
    //     ), 
    body: LayoutBuilder(
      // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
      builder: (BuildContext context, BoxConstraints constraints){
        if(constraints.maxWidth>600){
          return Container(height: 400,width: 400,color: Colors.teal,);
        }else{
          return Container(height: 400,width: 400,color: Colors.yellow,);
        }
      }),
    );
  }
}
