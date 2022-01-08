import 'package:flutter/material.dart';

import 'secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({ Key? key }) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('My First Page'),
            ElevatedButton(
              onPressed: (){
                var route = MaterialPageRoute(
                  builder: (context) => SecondPage(),
                );
                Navigator.push(context, route);
              }, 
              child: Text('ไปหน้าที่ 2'),
              )
          ],),),
    );
  }
}