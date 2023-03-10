import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uni_project/admin/admin_home/upload_data.dart';
import 'package:uni_project/navigator_page/user_owner_seller.dart';

import '../order_req/order_request.dart';
class Owner_Home extends StatefulWidget {
  const Owner_Home({Key? key}) : super(key: key);

  @override
  State<Owner_Home> createState() => _Owner_HomeState();
}

class _Owner_HomeState extends State<Owner_Home> {
  SharedPreferences? preferences;
  final stroage = FlutterSecureStorage();

  void tapped(int index){
    if(index == 0){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Upload_Data()));
    }

    if(index == 1){
    }
    if(index == 2){
    }
    if(index == 3){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderRequest()));
    }

  }
  List <String> images=[
    'images/upload.png',
    'images/supplier.png',
    'images/add.png',
    'images/supplier.png',

  ];
  List <Text> Text1=[
    const Text( 'Uploads',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
    const Text(  'Suppliers',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
    const Text(  'Add Supllier',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
    const Text(  'orders',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        title: const Text("Admin Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(

          children: [
            GridView.builder(

              controller: ScrollController(keepScrollOffset: true),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(


                  crossAxisCount: 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1),itemCount:4,itemBuilder: (context,index)=>
                GestureDetector(
                  onTap: () => tapped(index),
                  child: Container(
                    height: 350,

                    margin: const EdgeInsets.all(2.0),
                    decoration: const BoxDecoration(
                        color: Colors.black12
                    ),
                    child: Column(
                      children: [
                        Image.asset(images[index],height: 70,width: 50,),
                        const SizedBox(
                          height: 10,
                        ),
                        Text1[index],
                        //const SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
  Widget buttonLogoutWidget() {
    return ButtonTheme(
      height: 47,
      minWidth: MediaQuery.of(context).size.width,
      child: MaterialButton(
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onPressed: () async {
          await stroage.delete(key: "uid");
          Navigator.pushAndRemoveUntil(
              context, MaterialPageRoute(builder: (context) => Page_Navigator()), (route) => false);
        },
        child: const Text(
          'LogOut',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
    );
  }

  Drawer drawer() {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              accountName: Text(
                preferences?.getString('user') ?? '',
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              accountEmail: const Text(
                '',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: Column(
                children: [],
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: buttonLogoutWidget(),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
