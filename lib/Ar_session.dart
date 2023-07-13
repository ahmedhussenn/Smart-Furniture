import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:ar_flutter_plugin/datatypes/config_planedetection.dart';
import 'package:ar_flutter_plugin/datatypes/hittest_result_types.dart';
import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/models/ar_anchor.dart';
import 'package:ar_flutter_plugin/models/ar_hittest_result.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:developer';
import 'dart:io';
int counter=0;
var selected;


class AR_Session extends StatefulWidget {
  final String value;
  const AR_Session(
      {
        Key? key,
        required this.value,
      }):super(key: key);

  @override
  State<StatefulWidget> createState() {
    selected=value.toString();
    // TODO: implement createState
    return AR_Session_state();
  }
}

class AR_Session_state extends State<AR_Session>
{

  late ARSessionManager arSessionManager;
  late ARObjectManager arObjectManager;
  late ARAnchorManager arAnchorManager;

  List<ARNode> nodes = [];
  List<ARAnchor> anchors = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Anchors & Objects on Planes'),
        ),
        body: Container(
            child: Stack(children: [
              ARView(
                onARViewCreated: onARViewCreated,
                planeDetectionConfig: PlaneDetectionConfig.horizontalAndVertical,
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: onRemoveEverything,
                          child: Text("Remove Everything")),
                      ElevatedButton(
                          onPressed: (){

                       //     dispose();
                            Navigator.pop(context);
                          },
                          child: Text("back")),
                    ]
                ),
              )
            ])));
  }

  void onARViewCreated(
      ARSessionManager arSessionManager,
      ARObjectManager arObjectManager,
      ARAnchorManager arAnchorManager,
      ARLocationManager arLocationManager) {
    this.arSessionManager = arSessionManager;
    this.arObjectManager = arObjectManager;
    this.arAnchorManager = arAnchorManager;
    this.arSessionManager.onInitialize(
      handleRotation: true,
      handlePans: true,
      handleTaps: true ,
      showFeaturePoints: false,
      showPlanes: true,
      showAnimatedGuide: true,
    );
    this.arObjectManager.onInitialize();
    this.arSessionManager.onPlaneOrPointTap = onPlaneOrPointTapped;
    this.arObjectManager.onNodeTap = onNodeTapped;
  }
  @override
  Future <void> dispose() async{
    // AR_Session_state().dispose();
    super.dispose();
    arSessionManager.dispose();
    print("Session disposed*************");
    onRemoveEverything();

  }

  Future<void> onRemoveEverything() async {
    counter=0;
    nodes.forEach((node) {
      this.arObjectManager.removeNode(node);
    });
    anchors.forEach((anchor) {
      this.arAnchorManager.removeAnchor(anchor);
    });
    anchors = [];
  }
  /*Future<void> oncleaning() async {
    counter=0;
    *//*nodes.forEach((node) {
      this.arObjectManager.removeNode(node);
    });*//*

    print("********SE7AAA*********");
    dispose();

  }*/


  Future<void> onNodeTapped(List<String> nodes) async {
    var number = nodes.length;
    //  this.arSessionManager.onError("Tapped $number node(s)");
  }

  Future<void> onPlaneOrPointTapped(
      List<ARHitTestResult> hitTestResults) async {
    if(counter>0)
      print("");
    else {
      this.arSessionManager.onError("Item added");
      counter++;
      var singleHitTestResult = hitTestResults.firstWhere(
              (hitTestResult) => hitTestResult.type == ARHitTestResultType.plane);
      if (singleHitTestResult != null) {
        var newAnchor =
        ARPlaneAnchor(transformation: singleHitTestResult.worldTransform);
        bool? didAddAnchor = await this.arAnchorManager.addAnchor(newAnchor);

        if (didAddAnchor!) {
          this.anchors.add(newAnchor);
          // Add note to anchor
          var newcont=Container(child: Text("seha"),);

          var newNode = ARNode(

            type: NodeType.localGLTF2,
            // uri: "assets/s3/scene.gltf",
            // uri: "assets/s4/Format2.gltf",
            // uri: "assets/s5/leather_sofa.gltf",
            // uri: "assets/s6/sofa_chair.gltf",
            // uri: "assets/s6/sofa_chair.gltf",
            // uri: "assets/s7/wooden_bed.gltf",
            // uri: "assets/s8/round_table_and_chairs.gltf",
            // uri: "assets/s9/leather_chair.gltf",
            // uri: "assets/s10/office_chair.gltf",
            // selected= "assets/s11/water_cooler.gltf";//
            // selected="assets/s12/computer_chair.gltf";
            uri:selected,
            // uri: "assets/s10/office_chair.gltf",
            transformation: singleHitTestResult.worldTransform,
            scale: Vector3(0.9, 0.9, 0.9),
            position: Vector3(0, 0, 0),


          );

          bool? didAddNodeToAnchor =
          await this.arObjectManager.addNode(newNode, planeAnchor: newAnchor);
          if (didAddNodeToAnchor!) {
            this.nodes.add(newNode);
          } else {
            //   this.arSessionManager.onError("Adding Node to Anchor failed");
          }
        } else {
          //this.arSessionManager.onError("Adding Anchor failed");
        }
      }

    }
  }

  Future<void> _deleteCacheDir() async {
    var tempDir = await getTemporaryDirectory();

    if (tempDir.existsSync()) {
      tempDir.deleteSync(recursive: true);
    }
  }

  Future<void> _deleteAppDir() async {
    var appDocDir = await getApplicationDocumentsDirectory();

    if (appDocDir.existsSync()) {
      appDocDir.deleteSync(recursive: true);
    }
  }

}