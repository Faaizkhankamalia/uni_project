import 'package:flutter/material.dart';
class Pendeing_Oder extends StatefulWidget {
  const Pendeing_Oder({Key? key}) : super(key: key);

  @override
  State<Pendeing_Oder> createState() => _Pendeing_OderState();
}

class _Pendeing_OderState extends State<Pendeing_Oder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pending_oders"),
      ),
    );
  }
}
