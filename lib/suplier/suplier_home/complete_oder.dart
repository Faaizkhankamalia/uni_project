import 'package:flutter/material.dart';
class Complete_Oder extends StatefulWidget {
  const Complete_Oder({Key? key}) : super(key: key);

  @override
  State<Complete_Oder> createState() => _Complete_OderState();
}

class _Complete_OderState extends State<Complete_Oder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Completed Oder"),
      ),
    );
  }
}
