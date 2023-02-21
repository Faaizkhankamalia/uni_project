import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:uni_project/coustoumer/book_now/book_room.dart';

import '../../models/add_room_model.dart';
import '../../models/book_room_model.dart';

class OrderRequest extends StatefulWidget {
  const OrderRequest({Key? key}) : super(key: key);

  @override
  State<OrderRequest> createState() => _OrderRequestState();
}

class _OrderRequestState extends State<OrderRequest> {
  List<BookRoomModel> orders = [];

  @override
  void initState() {
    getOrders();
    super.initState();
  }
  getOrders() {
    try {
      orders.clear();
      setState(() {});
      FirebaseFirestore.instance.collection("orders").snapshots().listen((event) {
        orders.clear();
        setState(() {});
        for (int i = 0; i < event.docs.length; i++) {
          BookRoomModel dataModel = BookRoomModel.fromJson(event.docs[i].data());
          orders.add(dataModel);
        }
        setState(() {});
      });
      setState(() {});
    } catch (e) {}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orders"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: orders.length,
                  itemBuilder: (context, index){
                    return  Container(
                      width: double.infinity,
                      child: Card(
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: 125,
                                        width: 120,
                                        child: Image.network(
                                          orders[index].picture.toString(),
                                          fit: BoxFit.cover,

                                        )),

                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(

                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${orders[index].name}",
                                            style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500, color: Colors.blue),
                                          ),
                                          const   SizedBox(height: 15,),
                                          Text(
                                            "${orders[index].email}",
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500, color: Colors.black),
                                          ),



                                          const SizedBox(
                                            height: 15,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                const    SizedBox(height: 5,),
                              ],
                            ),
                          )),
                    );
                  })




            ],
          ),
        ),
      ),
    );
  }
}
