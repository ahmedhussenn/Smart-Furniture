import 'package:untitled8/providers/shopping_cart_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/Login_screen.dart';

import 'package:untitled8/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

import 'package:arkit_plugin/arkit_plugin.dart';

import 'package:vector_math/vector_math_64.dart' as vector;




bool shouldUseFirestoreEmulator = false;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  if (FirebaseAuth.instance.currentUser != null) {
    // User is already signed in

  }
  if (shouldUseFirestoreEmulator) {
    // print("ahmed");
    FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  }

  FlutterError.onError=FirebaseCrashlytics.instance.recordFlutterFatalError;
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (BuildContext context) {
        return CartProvider();
      },
      child: MaterialApp(
        title: 'Smart Home',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FirebaseAuth.instance.currentUser != null?HomeScreen():LoginScreen(),
      ),
    );
  }
}



class CameraDistancePage extends StatefulWidget {
  @override
  _CameraDistancePageState createState() => _CameraDistancePageState();
}

class _CameraDistancePageState extends State<CameraDistancePage> {
  ARKitController? arkitController;
  vector.Vector3? lastPosition;
  String distance = '0';

  @override
  void dispose() {
    arkitController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Camera Distance'),
      ),
      body: Stack(
        children: [
          ARKitSceneView(
            enableTapRecognizer: true,
            onARKitViewCreated: onARKitViewCreated,
            showFeaturePoints: true,
            showWorldOrigin: true,
            worldAlignment: ARWorldAlignment.camera,
          ),
          Text(distance, style: Theme.of(context).textTheme.headline4),
        ],
      ));

  void onARKitViewCreated(ARKitController arkitController) {
    this.arkitController = arkitController;
    this.arkitController?.onARTap = (ar) {
      final point =
      ar.firstWhere((o) => o.type == ARKitHitTestResultType.featurePoint);
      if (point != null) {
        final position = vector.Vector3(
          point.worldTransform.getColumn(3).x,
          point.worldTransform.getColumn(3).y,
          point.worldTransform.getColumn(3).z,
        );
        setState(() {
          distance =
              _calculateDistanceBetweenPoints(vector.Vector3.zero(), position);
        });
      }
    };
  }

  String _calculateDistanceBetweenPoints(vector.Vector3 A, vector.Vector3 B) {
    final length = A.distanceTo(B);
    return '${(length * 100).toStringAsFixed(2)} cm';
  }
}
