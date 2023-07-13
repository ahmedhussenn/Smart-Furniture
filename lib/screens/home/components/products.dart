import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../../../data/data.dart';
import '../../../models/product_model.dart';
import '../../details/details_screen.dart';

class Products extends StatelessWidget {

  const Products({Key? key}) : super(key: key);

  Widget _buildProducts(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    ProductModel productModel = productList[index];

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                    fit: BoxFit.cover,
                    height: size.height * 0.24,
                    width: size.width * 0.45,

                      productModel.imageUrl,
                    ),
              ),


              Expanded(

                child: Text(

                  productModel.name,
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: black,
                    fontSize: 14,
                  ),
                ),
              ),

              
              Expanded(

                child: Text(
                  'by ${productModel.manufacturer}',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: black.withOpacity(0.5),
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: appPadding),
          child: GridView.builder(
              padding: EdgeInsets.only(bottom: appPadding * 2),
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.65,
              ),
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return Transform.translate(
                  offset: Offset(0.0, index.isOdd ? 30 : 0.0),
                  child: _buildProducts(context, index),
                );
              }),
        ));
  }
}