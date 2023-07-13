
import 'package:untitled8/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController{

  static UserRepository get instance => Get.find();
  final db = FirebaseFirestore.instance ;
  createUser (UserModel user) async {
   await db.collection("Users").add(user.toJason()).whenComplete(() =>
        Get.snackbar("success", "your account has been created",
snackPosition: SnackPosition.BOTTOM
        ),
        
    ).catchError((error,stackTrace){
      Get.snackbar("error", "somthing went wrong",

      );
      print(error.toString());
    });
  }
}