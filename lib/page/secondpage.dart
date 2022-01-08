// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:routing/page/fhirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _id = TextEditingController();
  final TextEditingController _name = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('This Second Page'),
            

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: Text('กลับไปหน้าแรก'),
              ),

            
              form(),
           
            ElevatedButton(
                 onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    var route = MaterialPageRoute(
                      builder: (context) => ThirdPage(
                        stdId: _id.text,
                        stdName: _name.text,
                      ),
                    );
                    Navigator.push(context, route);
                  }
                },
              child: Text('ยืนยัน แล้วส่งค่าข้อมูลไปหน้าที่ 3'),
            ),
          ]
        ),
      ),
        );
  }    



 Widget form() {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _id,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "โปรดใส่รหัสนิสิต";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: 'รหัสนิสิต',
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                    TextFormField(
                      controller: _name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "โปรดใส่ชื่อ-นามสกุล";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: 'ชื่อ-นามสกุล',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}