
import 'package:untitled8/models/review.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/Login_screen.dart';
import 'package:untitled8/Sentiment%20anaylsis.dart';
import 'package:untitled8/cart.dart';
import 'package:untitled8/newfav.dart';


import '../../Mes.dart';
import '../../data/data.dart';
import '../home/components/custom_appbar.dart';
import '../home/components/favorite.dart';
import '../orders/orders.dart';
import '../rateus/reviews.dart';
import 'components/categories.dart';
import 'components/products.dart';
import 'components/search_bar.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("back button pressed");
        final shouldpop= await showWarning(context) as bool?;
        return shouldpop ??false ;
      },
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Text('Smart Furniture',style: TextStyle(color: Colors.black , fontWeight: FontWeight.w900),),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          leading: new IconButton(
            icon: new Icon(Icons.menu),
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          ),
        ),


        //appBar: AppBar(leading: Icon(Icons.accessibility),),
         drawer: NavigationDrawer(),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                // CustomAppBar(),
                SearchBar(),
                Categories(),
                Products(),
              ],
            ),
          ),
        ),
      ),
    );
  }

 Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
     context: context,
     builder: (context)=>AlertDialog(
       title: Text('Do you want to exist the app?'),
       actions: [
         ElevatedButton(onPressed: ()=>Navigator.pop(context,false),

          child: Text("NO")),
         ElevatedButton(onPressed: ()=>Navigator.pop(context,true), child: Text("YES")),
       ],
     ),
 );
}
class NavigationDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String? email=FirebaseAuth.instance.currentUser?.email.toString();
    String? Name=FirebaseAuth.instance.currentUser?.displayName.toString();

    // TODO: implement build
    return Drawer(

      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(""),
            accountEmail: Text(email!,style: TextStyle(fontSize: 17)),

          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              // Navigate to home screen
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () { Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) =>   ProductPage()
              ),
            );
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Cart'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) =>   CartPage()
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('My Orders'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) =>  Orders()
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.compare_arrows),
            title: Text('Area mesurement'),
            onTap: () {Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) =>   Mes(value: "assets/s14/chair.gltf")
              ),
            );
              // Navigate to favorites screen
            },
          ),
    /*      ListTile(
            leading: Icon(Icons.rate_review),
            title: Text('Rate us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) =>   Reviewes(),
                ),
              );
            },
          ),*/
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Navigate to settings screen
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            onTap: () {
              // Navigate to help screen
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
                  auth.signOut().then((value) {
                  print('signout');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>   LoginScreen()
                    ),
                  );
             });

              // Navigate to help screen
            },
          ),
        ],
      ),
    );
  }
}