import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../common_textfield/common_textfield.dart';
import '../../../models/add_room_model.dart';
import '../../models/book_room_model.dart';

class BookRoom extends StatefulWidget {
  BookRoom(this.rooms, this.curentIndex, {Key? key}) : super(key: key);
  List<AddRoomModel> rooms;

  int curentIndex;

  @override
  State<BookRoom> createState() => _BookRoomState();
}

class _BookRoomState extends State<BookRoom> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  bool isLoading = false;
  final formKey = GlobalKey<FormState>();

  uploadLecture() async {
    isLoading = true;
    setState(() {});
    int id = DateTime.now().millisecondsSinceEpoch;
    BookRoomModel dataModel = BookRoomModel(
      picture: widget.rooms[widget.curentIndex].picture.toString(),
      name: name.text,
      email: email.text,
      doc: id.toString(),
    );
    try {
      await FirebaseFirestore.instance.collection("orders").doc('$id').set(dataModel.toJson());
      isLoading = false;
      setState(() {});
      Fluttertoast.showToast(msg: 'Room added successfully');
      showDialogForSuccess();
    } catch (e) {
      isLoading = false;
      setState(() {});
      Fluttertoast.showToast(msg: 'Some error occurred');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload Rooms"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                      ),
                      color: Colors.black12),
                  child: Image.network(
                    widget.rooms[widget.curentIndex].picture.toString(),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CommonTextFieldWithTitle('Name', 'Enter Your Name', name, (val) {
                  if (val!.isEmpty) {
                    return 'This is required field';
                  }
                }),
                const SizedBox(
                  height: 15,
                ),
                CommonTextFieldWithTitle('Email', 'Enter Your Email', email, (val) {
                  if (val!.isEmpty) {
                    return 'This is required field';
                  }
                }),
                const SizedBox(
                  height: 15,
                ),
                isLoading
                    ? CircularProgressIndicator()
                    : GestureDetector(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            uploadLecture();
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                            ),
                            height: 50,
                            width: double.infinity,
                            child: const Center(
                              child: Text(
                                "Book Room",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  showDialogForSuccess() {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          content: Container(
            height: 213,
            child: Column(
              children: const [
                Icon(
                  Icons.gpp_good,
                  size: 40,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Book Successfully",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  "Room Book successful after review admin will accept",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: Text(
                "Close",
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      },
    );
  }
}
