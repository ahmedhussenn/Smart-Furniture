
import 'package:untitled8/update_with_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
int hold=0;
class order {
  String name;
  String email;
  String date;
  String addresse;
  String phone;
  String price;
  int orderNumber;
  List <dynamic> orderDetails=[];
  order({required this.name, required this.email, required this.addresse ,  required this.date,required this.price,required this.phone,required this.orderNumber,required this.orderDetails, });
}
class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List<order> orders = [];
  bool isDroppedDown=false;
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp();
    fetchCartItems();
  }

  Future<void> fetchCartItems() async {
    String uid = FirebaseAuth.instance.currentUser!.uid;

    QuerySnapshot<Map<String, dynamic>> querySnapshot =
    await FirebaseFirestore.instance.collection('Users').doc(uid).collection(
        'orders').get();
    List<order> items = querySnapshot.docs.map((doc) {
      return order(
        name: doc.data()['userName'],
        price: doc.data()['orderPrice'],
        date: doc.data()['date'].toString(),
        email: doc.data()['email'],
        orderNumber: doc.data()['orderNumber'],
        phone:doc.data()['phone'],
        addresse: doc.data()['address'],
        orderDetails: doc.data()['orderDetails'],



      );
    }).toList();
    setState(() {
      orders= items;
    });
    print(orders[0].orderDetails[1]);
    print(orders[0].orderDetails[0]);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
body: SingleChildScrollView(
  child:   Column(

    children: [

      Container(



        height: size.height * 0.87,

        child: ListView.builder(

            shrinkWrap: true,

          itemCount: orders.length,



          itemBuilder: (BuildContext context, int index) {

              int count=index;

            Size size = MediaQuery

                .of(context)

                .size;

            order Order = orders[index];



            return Container(



              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(18),

                color: Colors.white,

              ),

              margin: EdgeInsetsDirectional.all(15.00),

              child: Padding(

                padding: const EdgeInsets.symmetric(

                    vertical: 5, horizontal: 10),

                child: Row(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [

                    // ClipRRect(

                    //     borderRadius: BorderRadius.circular(10),

                    //     child: Image.asset(

                    //       fit: BoxFit.cover,

                    //       height: size.height * 0.2,

                    //       width: size.width * 0.4,

                    //       item.image,

                    //     )),

                    // const SizedBox(

                    //   height: 20,

                    // ),

                    Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [

                        const SizedBox(height: 3),

                        Row(

                          children: [

                            const Text(

                           'Order Number: ',

                              style: TextStyle(

                                overflow: TextOverflow.ellipsis,

                                color: black,

                                fontSize: 20,

                                fontWeight: FontWeight.bold,

                              ),
                            ),

                            SizedBox(width: 5,),
                            Text(
                              Order.orderNumber.toString(),
                              style: const TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Colors.blueGrey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const Text(
                              'Order Price: ',
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Row(
                              children: [
                                Text(
                                  Order.price, style: const TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.blueGrey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(' \$',style: TextStyle(color: Colors.orangeAccent,fontWeight: FontWeight.w900,fontSize: 20),),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const Text(
                              'Order Date: ',
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Container(
                              width: 160,
                              height: 50,
                              child: Text(
                                Order.date,
                                maxLines: 3,
                                style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.blueGrey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                           SizedBox(height: 5,),
                          ],
          ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                          height: 1,
                          color: Colors.grey[200],
                          width: size.width * 0.8,
                        ),
                        SizedBox(height:15 ,),

                        Row(

                          children: [

                            const Text(

                              'Order Details: ',

                              style: TextStyle(

                                overflow: TextOverflow.ellipsis,

                                color: black,

                                fontSize: 20,

                                fontWeight: FontWeight.bold,

                              ),

                            ),

                            SizedBox(width: 5,),

                           IconButton(onPressed: (){

                             isDroppedDown=!isDroppedDown;

                             setState(() {
                        hold=index;
                             });
                           }, icon: Icon(
                            isDroppedDown? Icons.arrow_circle_up_outlined:Icons.arrow_circle_down_outlined,
                             size: 20,
                             color: Colors.orangeAccent,
                           ),
                           ),
                          ],
                        ),
                        Visibility(
                          visible: isDroppedDown&&index==hold,
                          child:Container(
                            height: size.height * 0.8,
                            width: size.width * 0.82,
                            child: ListView.builder(
                              itemCount: orders[hold].orderDetails.length,
                              itemBuilder: (BuildContext context, int index) {
                                Size size = MediaQuery.of(context).size;
                                Map<String, dynamic> item = orders[hold].orderDetails[index];
                                return Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset(
                                            item['arurl'].toString(),
                                            height: size.height * 0.2,
                                            width: size.width * 0.3,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded( // <-- wrap the Row in an Expanded widget
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              const SizedBox(height: 3),
                                              Text(
                                                item['modelname'].toString(),
                                                style: const TextStyle(
                                                  overflow: TextOverflow.ellipsis,
                                                  color: black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(height: 15),
                                              Text(
                                                'by ${item['manf'].toString()}',
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  overflow: TextOverflow.ellipsis,
                                                  color: Colors.black.withOpacity(0.5),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                          ,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ],
  ),
),
    );
  }
}
