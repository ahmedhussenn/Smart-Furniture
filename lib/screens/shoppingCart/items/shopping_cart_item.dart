
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class shoppingCartItem extends StatelessWidget {
  const shoppingCartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
Expanded(
    child: Container(
      height: 90,
      child: Image.asset("assets/s20/wardrobe.png"),
    ),
),
            Expanded(
              child: Container(

                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10,),
                    Text('product name'),
                    SizedBox(height: 10,),
                    Text('50\$'),


                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.delete,size: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(onPressed: (){}, child: Text('+ Add')),
                  ),
                ],
              ),
            ),

          ],
        ),
      ],
    );
  }
}
