import 'package:untitled8/providers/shopping_cart_provider.dart';
import 'package:untitled8/screens/details/components/details_screen.dart';
import 'package:untitled8/screens/shoppingCart/items/shopping_cart_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/models/product_model.dart';
import 'package:untitled8/screens/details/components/product_details.dart';
import 'package:untitled8/screens/details/components/star_rating.dart';
import 'package:provider/provider.dart';

import 'constants/constants.dart';

class cartItem {
  String name;
  String manufacture;
  String image;
  int price;
  int quantity;


  cartItem({required this.name, required this.manufacture,   required this.image,required this.price,required this.quantity,});

// factory cartItem.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot) {
//   Map<String, dynamic> data = snapshot.data()!;
//   return cartItem(
//     name: data['modelname'],
//     manufacture: data['manf'],
//     price: data['price'],
//     quantity: data['quantity'],
//     image: data['arurl'],
//   );
// }
}



// Future<List<cartItem>> readRecords() async {
//
//   QuerySnapshot<Map<String, dynamic>> querySnapshot = await FirebaseFirestore.instance.collection('cart').get();
//   print("before");
//
//   querySnapshot.docs.forEach((doc) {
//     print(doc.id);
//
//     print("object");
//     cartItems.add(cartItem.fromFirestore(doc));
//     print("oafeter  bject");
//     print(cartItems[0].price);
//   });
//   return cartItems;
// }
class CartPage extends StatefulWidget {

  List<CartItem> items = [
    CartItem(name: 'Item 1', quantity: 2),
    CartItem(name: 'Item 2', quantity: 1),
    CartItem(name: 'Item 3', quantity: 3),
  ];
  CartPage();
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<cartItem> cartItems = [];

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp();
    fetchCartItems();
  }

  Future<void> fetchCartItems() async {
    String uid = FirebaseAuth.instance.currentUser!.uid;

    QuerySnapshot<Map<String, dynamic>> querySnapshot =
    await  FirebaseFirestore.instance.collection('Users').doc(uid).collection('cart').get();
    List<cartItem> items = querySnapshot.docs.map((doc) {
      return cartItem(quantity:doc.data()['quantity'] , name: doc.data()['modelname'], manufacture: doc.data()['manf'], image: doc.data()['arurl'], price:doc.data()['price'] ,
      );
    }).toList();
    setState(() {
      cartItems = items;
    });
  }
  @override
  Widget build(BuildContext context) {
    // readRecords();
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount:cartItems.length,

        itemBuilder: (BuildContext context, int index) {
          Size size = MediaQuery.of(context).size;
          cartItem item = cartItems[index];



          return Column(
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            fit: BoxFit.cover,
                            height: size.height * 0.24,
                            width: size.width * 0.42,
                            item.image,
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: [
                          const SizedBox(height: 35),
                          Text(
                            item.name,
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [

                              Container(


                                padding: new EdgeInsets.symmetric(horizontal: 13),
                                child: Text(
                                  maxLines: 2,
                                  overflow:  TextOverflow.ellipsis,
                                  'by ${item.manufacture}',
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  ' ${item.price} EG',
                                  style: const TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.black54,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children:  [

                                      IconButton(
                                        icon: Icon(Icons.add),
                                        onPressed: ()async  {
                                          //Provider.of<CartProvider>(context,listen: false).setQuantity(item);
                                          // int quantity=1;
                                          // setState(() {
                                          //
                                          //   quantity=  item.quantity++;
                                          //
                                          //
                                          // });
                                          // Provider.of<CartProvider>(context,listen: false).setQuantity(item.quantity);
                                          Provider.of<CartProvider>(context,listen: false).add();

                                          String uid = FirebaseAuth.instance.currentUser!.uid;
                                          CollectionReference<Map<String, dynamic>> productsRef =
                                          await FirebaseFirestore.instance.collection('Users').doc(uid).collection('cart');

                                          Query<Map<String, dynamic>> query = productsRef.where('modelname', isEqualTo: item.name);
                                          print("cart item"+item.name);
                                          QuerySnapshot<Map<String, dynamic>> querySnapshot = await query.get();
                                          querySnapshot.docs.forEach((doc) async {
                                            await doc.reference.update({'quantity':  Provider.of<CartProvider>(context,listen: false).q});
                                          });


                                          // updateCart(quantity);
                                        },
                                      ),
                                      Text('${Provider.of<CartProvider>(context,listen: true).q.toString()}'),
                                      IconButton(
                                        icon: Icon(Icons.remove),
                                        onPressed: ()async {
                                          if (item.quantity > 1) {
                                            int quantity=1;
                                            // setState(()  {
                                            //  Provider.of<CartProvider>(context,listen: false).setQuantity(item.quantity);
                                            Provider.of<CartProvider>(context,listen: false).minus();
                                            // });


                                            // updateCart(quantity);
                                            String uid = FirebaseAuth.instance.currentUser!.uid;
                                            CollectionReference<Map<String, dynamic>> productsRef =
                                            await FirebaseFirestore.instance.collection('Users').doc(uid).collection('cart');

                                            Query<Map<String, dynamic>> query = productsRef.where('modelname', isEqualTo: item.name);
                                            print("cart item"+item.name);
                                            QuerySnapshot<Map<String, dynamic>> querySnapshot = await query.get();
                                            querySnapshot.docs.forEach((doc) async {
                                              await doc.reference.update({'quantity':Provider.of<CartProvider>(context,listen: false).q});

                                            });

                                          }

                                        },
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          IconButton(onPressed: () async {
                            String uid = FirebaseAuth.instance.currentUser!.uid;
                            CollectionReference<Map<String, dynamic>> productsRef =
                            await FirebaseFirestore.instance.collection('Users').doc(uid).collection('cart');

                            Query<Map<String, dynamic>> query = productsRef.where('modelname', isEqualTo: item.name);
                            print("cart item"+item.name);
                            QuerySnapshot<Map<String, dynamic>> querySnapshot = await query.get();
                            querySnapshot.docs.forEach((doc) async {
                              await doc.reference.delete();
                            });
                            // setState(() {
                            fetchCartItems();
                            // });

                            print("delete cart item");
                          }, icon: Icon(Icons.delete)),



                        ],
                      ),



                    ],
                  ),
                ),
              ),

            ],
          );
        },
      ),
    );
  }
}
CollectionReference cart = FirebaseFirestore.instance.collection('cart');
// Future<void> updateCart(int quantity) {
//   print(quantity);
//   String uid = FirebaseAuth.instance.currentUser!.uid;
//   CollectionReference<Map<String, dynamic>> productsRef =
//       await FirebaseFirestore.instance.collection('Users').doc(uid).collection('cart');
//
//   Query<Map<String, dynamic>> query = productsRef.where('modelname', isEqualTo: item.name);
//   print("cart item"+item.name);
//   QuerySnapshot<Map<String, dynamic>> querySnapshot = await query.get();
//   querySnapshot.docs.forEach((doc) async {
//     await doc.reference.delete();
//   });
// }
class CartItem {
  final String name;
  int quantity;

  CartItem({required this.name, this.quantity = 1});
}