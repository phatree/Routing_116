import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({ Key? key, this.stdId, this.stdName }) : super(key: key);

  final String? stdId;
  final String? stdName;

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('รหัสนิสิต  ' + widget.stdId!),
            Text('ชื่อนิสิต  ' + widget.stdName!),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: Text('กลับไปหน้าที่ 2'),
              ),
          ],
        ),
      ),
      
    );
  }
}