import 'package:div/widget/Regular.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "CBFC",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App Bar'),
          centerTitle: true,
          backgroundColor: Colors.black26,
          titleTextStyle: const TextStyle(fontSize: 20),
        ),
        body: Image.asset('assets/images/bb.png', height: 300, width: 300),
        // (
        //     child:Text('My Home Page',
        //     style: TextStyle(
        //       fontStyle: FontStyle.normal,
        //       fontSize: 25
        //     ),)
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print("You clicked me"),
          backgroundColor: Colors.green,
          child: const Text("click"),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.red,
          child: SizedBox(
              height: 40,
              child: Center(
                  child: Regular(
                text: 'text',
                size: 20,
                color: Colors.red,
              ))),
        ),
      )));
}
