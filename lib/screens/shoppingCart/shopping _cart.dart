
import 'package:flutter/material.dart';

import '../home/components/products.dart';
import 'items/shopping_cart_item.dart';

class shoppingCart extends StatelessWidget {
  const shoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text("Total Amount"),
        subtitle: Text("\$ 170.00"),
        trailing: Container(
          width: 160,
           decoration: BoxDecoration(
             color: Colors.grey,
             borderRadius: BorderRadius.circular(30),
           ),

          child: MaterialButton(
            onPressed: (){},

            child: Text(
              'Submit'
            ),
          ),
        ),



      ),
appBar: AppBar(
  title: Text("Shopping Cart"
  ),
),
      body:  ListView(
        children: [
          SizedBox(height: 10,),
          shoppingCartItem(),
          SizedBox(height: 10,),

        ],
      ),

    );
  }
}
