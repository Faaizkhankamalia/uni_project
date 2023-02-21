import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uni_project/navigator_page/user_owner_seller.dart';
class Owner_Home extends StatefulWidget {
  const Owner_Home({Key? key}) : super(key: key);

  @override
  State<Owner_Home> createState() => _Owner_HomeState();
}

class _Owner_HomeState extends State<Owner_Home> {
  SharedPreferences? preferences;
  final stroage = FlutterSecureStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: double.infinity,
              child: Card(
                elevation: 5,
                child: Center(child: Text("Room For Rent",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              width: double.infinity,
              child: Card(
                elevation: 5,
                child: Center(child: Text("Car For Rent",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              width: double.infinity,
              child: Card(
                elevation: 5,
                child: Center(child: Text("Oder Food",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
            ),
            SizedBox(height: 20,),
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
