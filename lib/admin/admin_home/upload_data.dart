import 'package:flutter/material.dart';

import '../uploads/upload_room.dart';

class Upload_Data extends StatefulWidget {
  const Upload_Data({Key? key}) : super(key: key);

  @override
  State<Upload_Data> createState() => _Upload_DataState();
}

class _Upload_DataState extends State<Upload_Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload Data"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const UploadRoom()));
              },
              child: Container(
                height: 50,
                child: const Card(
                  elevation: 2,
                  child: Center(child: Text("Upload Room For Rent",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 50,
              child: Card(
                elevation: 2,
                child: Center(child: Text("Upload Car for Rent",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              child: Card(
                elevation: 2,
                child: Center(child: Text("Upload Food",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
