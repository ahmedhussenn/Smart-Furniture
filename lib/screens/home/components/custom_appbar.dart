import 'package:flutter/material.dart';
import 'package:untitled8/screens/home/components/favorite.dart';

import '../../../constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_circle_right,
            size: 25,
          ),
          Text(
            'Explore',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          IconButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => FavoriteScreen(),
                ),
              );
            },
           icon: Icon(Icons.favorite), iconSize: 25,

          )
        ],
      ),
    );
  }
}