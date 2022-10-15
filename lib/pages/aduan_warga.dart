import 'package:flutter/material.dart';

class AduanWarga extends StatefulWidget {
  const AduanWarga({Key? key}) : super(key: key);

  @override
  State<AduanWarga> createState() => _HomePageState();
}

class _HomePageState extends State<AduanWarga> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: SafeArea(
        child: Column(
          children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                  Row(
                  mainAxisSize: MainAxisSize.min,
                 children: [
                  RaisedButton(onPressed: (){
                    print('RaisedButton');
                  },
                  color: Colors.blue[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text ('kembali', style: TextStyle(color: Colors.white)),
                  )
                  
                ],
            ),
          ],

          ),
              ),

              Expanded(
                  child: Container(
                  color: Colors.white,  
                  child: Column(
                    children: [
                      Image.asset('Image/electric-pole.png')
                    ]),
                  ),
              ),

        ],
        ),
      ),
    );
  }
}