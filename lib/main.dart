import 'package:div/widget/Regular.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
  title: "CBFC",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('My App Bar'),
        centerTitle:true ,
        backgroundColor: Colors.black26,
        titleTextStyle: TextStyle(fontSize: 20),
      ),
      body: Image.asset('images/bb.png',
      height: 300,),
      // (
      //     child:Text('My Home Page',
      //     style: TextStyle(
      //       fontStyle: FontStyle.normal,
      //       fontSize: 25
      //     ),)
      // ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>
          print("You clicked me"),
        child: Text("click"),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        child: Container(
          height: 40,
          child: Center(
            child:Regular(text: 'text', size: 20, color: Colors.red,
            )
        )
      ),
    ),
  )
  )
  );
}
