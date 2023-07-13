import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:untitled8/models/product_model.dart';
import 'package:untitled8/screens/home/components/products.dart';
import 'package:untitled8/screens/details/components/product_details.dart';

import '../../details/components/star_rating.dart';
import '../../details/details_screen.dart';
import '../../../constants/constants.dart';
List<Record> records = [];
class Record {
  String param1;
  String param2;
  String param5;
  int price;
  int quantity;


  Record({required this.param1, required this.param2,   required this.param5,required this.price,required this.quantity,});

  factory Record.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    Map<String, dynamic> data = snapshot.data()!;
    return Record(
      param1: data['arurl'],
      param2: data['manf'],
      param5: data['modelname'],
      price: data['price'],
      quantity: data['quantity'],
    );
  }
}

Future <void> readRecords() async {

  QuerySnapshot<Map<String, dynamic>> querySnapshot = await FirebaseFirestore.instance.collection('favourite').get();
  print("before");

  querySnapshot.docs.forEach((doc) {
    print(doc.id);

    print("object");
    records.add(Record.fromFirestore(doc));
    print("oafeter  bject");

  });

}
//import 'models/product_model.dart';
class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text(
            "Favourite",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        body: SafeArea(
          child: Center(
            child: ListView.builder(
              itemCount: add_notes_state.Fav_lst.length,
              itemBuilder: (context, index) {
                Size size = MediaQuery.of(context).size;
                ProductModel productModel = add_notes_state.Fav_lst[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailsScreen(
                          product: productModel,
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(appPadding / 3),
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                fit: BoxFit.cover,
                                height: size.height * 0.24,
                                width: size.width * 0.45,
                                productModel.imageUrl,
                              )),
                          const SizedBox(
                            height: 30,
                          ),
                          Column(
                            children: [
                              const SizedBox(height: 35),
                              Text(
                                productModel.name,
                                style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 15),
                              Text(
                                'by ${productModel.manufacturer}',
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const SizedBox(height: 30),
                              Text(
                                ' ${productModel.price} EG',
                                style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.black54,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${productModel.rating}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  StarRating(rating: productModel.rating),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 150),
                          Column(
                            children: const [
                              SizedBox(height: 100),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,

                              )
                            ],
                          ),
                         
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
} // TODO Implement this library.
