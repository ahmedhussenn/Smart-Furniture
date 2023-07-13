/*import '../models/product_model.dart';

final _product1 = ProductModel(
  name: 'round table with chairs',
  manufacturer: 'Carl MH Barenbrug',
  imageUrl: 'assets/s8/round_table_and_chairs.png',
  price: 1695,
  color: 'White',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
  madeIn: 'Russia',
  rating: 4,
  style: 'Modern',
    ARurl: "assets/s8/round_table_and_chairs.gltf"

);

final _product2 = ProductModel(
  name: 'Gaming chair',
  manufacturer: 'Carl MH Barenbrug',
  imageUrl: 'assets/s6/GamingChair.png',
  price: 995,
  color: 'Yellow',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
  madeIn: 'Russia',
  rating: 4,
  style: 'Modern',
    ARurl: "assets/s6/ergonomic_mesh_office_chair.gltf"
);

final _product3 = ProductModel(
  name: "White sofa ",
  manufacturer: 'Carl MH Barenbrug',
  imageUrl: 'assets/s4/Format2.jpeg',
  price: 1455,
  color: 'White',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
  madeIn: 'Russia',
  rating: 3,
  style: 'Modern',
    ARurl: "assets/s4/Format2.gltf"
);

final _product4 = ProductModel(
  name: 'pink sofa',
  manufacturer: 'Carl MH Barenbrug',
  imageUrl: 'assets/s55/pinksofa.png',
  price: 1205,
  color: 'White',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
  madeIn: 'Russia',
  rating: 4,
  style: 'Modern',
    ARurl: "assets/s16/pinksofa.gltf"
);

final _product5 = ProductModel(
  name: 'Brown bed',
  manufacturer: 'Carl MH Barenbrug',
  imageUrl: 'assets/s19/bed.png',
  price: 2100,
  color: 'Teal',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
  madeIn: 'Russia',
  rating: 4,
  style: 'Modern',
  ARurl: "assets/s19/bed.gltf"
);

final _product6 = ProductModel(
  name: 'leather chair',
  manufacturer: 'Carl MH Barenbrug',
  imageUrl: 'assets/s9/leather_chair.jpeg',
  price: 1100,
  color: 'Wooden',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
  madeIn: 'Russia',
  rating: 4,
  style: 'Classic',
    ARurl: "assets/s9/leather_chair.gltf"
);

final _product7 = ProductModel(
  name: 'dining table',
  manufacturer: 'Carl MH Barenbrug',
  imageUrl: 'assets/s1/dining_table_and_chairs.png',
  price: 1335,
  color: 'Silver',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
  madeIn: 'Russia',
  rating: 4,
  style: 'Classic',
    ARurl: "assets/s1/dining_table_and_chairs.gltf"
);

final _product8 = ProductModel(
  name: 'black chair',
  manufacturer: 'Carl MH Barenbrug',
  imageUrl: 'assets/s14/office_chair.png',
  price: 3025,
  color: 'White',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
  madeIn: 'Russia',
  rating: 5,
  style: 'Modern',
    ARurl: "assets/s14/office_chair.gltf"
);
final _product9 = ProductModel(
    name: 'wooden chair',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s2/N01_Oak.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s2/N01_Oak.gltf"
);
final _product10 = ProductModel(
    name: 'Leather sofa',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s5/leather_sofa.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s5/leather_sofa.gltf"
);
final _product11 = ProductModel(
    name: 'wooden bed',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s7/wooden_bed.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s7/wooden_bed.gltf"
);
final _product12 = ProductModel(
    name: 'black chair',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s14/office_chair.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s14/office_chair.gltf"
);
final _product13 = ProductModel(
    name: 'Comp chair',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s12/computer_chair.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s12/computer_chair.gltf"
);
final _product14 = ProductModel(
    name: 'sofa',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s18/couch.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s18/couch.gltf"
);
final _product15= ProductModel(
    name: 'Orange gaming chair',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s20/orange_chair.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s20/orange_chair.gltf"
);
final _product16= ProductModel(
    name: 'maktba',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s17/maktba.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s17/maktba.gltf"
);
final _product17= ProductModel(
    name: 'pouf',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s24/pouf.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s24/pouf.gltf"
);
final _product18= ProductModel(
    name: 'Middle table',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s23/middle_table.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s23/middle_table.gltf"
);
final _product19= ProductModel(
    name: 'drawer',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s21/drawer.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s21/drawer.gltf"
);
final _product20= ProductModel(
    name: 'classic chair',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s3/classic_chair.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s3/classic_chair.gltf"
);
final _product21= ProductModel(
    name: 'drawer',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s13/wardrobe_with_3_doors.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s13/wardrobe_with_3_doors.gltf"
);
final _product22= ProductModel(
    name: 'White classic sofa',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s22/white_sofa.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s22/white_sofa.gltf"
);
final _product23= ProductModel(
    name: 'Old table',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s10/old_table.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s10/old_table.gltf"
);
final _product24= ProductModel(
    name: 'wooden sofa',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s11/wooden_sofa.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s11/wooden_sofa.gltf"
);
final _product25= ProductModel(
    name: 'chair',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s25/chair_low.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s25/chair_low.gltf"
);
final _product26= ProductModel(
    name: 'office chair',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s26/low_office_chair.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s26/low_office_chair.gltf"
);
final _product27= ProductModel(
    name: 'white sofa chair',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s27/white_sofa_chair.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s27/white_sofa_chair.gltf"
);
final _product28= ProductModel(
    name: 'black leather sofa',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s28/black_leather_sofa.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s28/black_leather_sofa.gltf"
);
final _product29= ProductModel(
    name: 'bed',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s29/bed.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s29/bed.gltf"
);
final _product30= ProductModel(
    name: 'bed',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s30/bed.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s30/bed.gltf"
);
final _product31= ProductModel(
    name: 'chair with white basement',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s31/scene.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s31/sofa.gltf"
);
final _product32= ProductModel(
    name: 'chair with white basement',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s31/set_of_2_flynn_dining_chairs_graphite_grey.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s32/set_of_2_flynn_dining_chairs_graphite_grey.glb"
);
final _product33= ProductModel(
    name: 'sofa_tagroba',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s31/set_of_2_flynn_dining_chairs_graphite_grey.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s33/set_of_2_flynn_dining_chairs_graphite_grey.glb"
);

final webproduct1= ProductModel(
    name: 'pink sofa',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s55/pinksofa.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "https://github.com/ahmedhussenn/project/raw/master/pink_sofa.glb"
);
final webproduct2= ProductModel(
    name: 'pouf',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s55/pouf.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "https://github.com/ahmedhussenn/project/raw/master/pouf.glb"
);
final webproduct3= ProductModel(
    name: 'gaming chair',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s55/gaming_chair.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "https://github.com/ahmedhussenn/project/raw/master/gaming_chair.glb"
);
final webproduct4= ProductModel(
    name: 'bed',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s55/bed.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "https://github.com/ahmedhussenn/project/raw/master/bed.glb"
);
final webproduct5= ProductModel(
    name: 'leather couch',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s55/leather_couch.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "https://github.com/ahmedhussenn/project/raw/master/leather_couch.glb"
);
final webproduct6= ProductModel(
    name: 'sofa ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s55/sofa_set.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "https://github.com/ahmedhussenn/project/raw/master/sofa_set.glb"
);
final webproduct7= ProductModel(
    name: 'dining table with chairs ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s55/dining_table_and_chairs.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "https://github.com/ahmedhussenn/project/raw/master/dining_table_and_chairs.glb"
);
final webproduct8= ProductModel(
    name: ' retro computer chair',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s55/retro_computer_chair.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "https://github.com/ahmedhussenn/project/raw/master/retro_computer_chair.glb"
);
final webproduct9= ProductModel(
    name: 'computer chair ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s55/computer_chair.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "https://github.com/ahmedhussenn/project/raw/master/computer_chair.glb"
);
final webproduct10= ProductModel(
    name: 'modern wardrobe ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s55/modern_wardrobe.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "https://github.com/ahmedhussenn/project/raw/master/modern_wardrobe.glb"
);*/
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import '../models/product_model.dart';

final p1= ProductModel(
    name: 'metalic bed ',    quantity: 1,

    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s1/bed.png',
    price: 5600,
    color: 'Black',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s1/bed.gltf"
);
final p2= ProductModel(
    name: 'wooden chair ',    quantity: 1,

    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s2/chair.png',
    price: 420,
    color: 'Brown',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s2/chair.gltf"
);
final p3= ProductModel(
    name: 'bedroom drawer',    quantity: 1,

    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s3/drawer.png',
    price: 670,
    color: 'Black',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s3/drawer.gltf"
);
final p4= ProductModel(
    name: 'pouf',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s4/pouf.png',
    price: 890,
    color: 'Blue',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,    quantity: 1,

    style: 'Modern',
    ARurl: "assets/s4/pouf.gltf"
);
final p5= ProductModel(
    name: 'pink sofa ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s5/pinksofa.png',
    price: 3025,
    color: 'Pink',    quantity: 1,

    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s5/pinksofa.gltf"
);
final p6= ProductModel(
    name: 'black office chair ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s6/office_chair.png',
    price: 3025,    quantity: 1,

    color: 'Black',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s6/office_chair.gltf"
);

final p7= ProductModel(
    name: 'pouf  ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s7/besame_chair.png',
    price: 930,
    color: 'Pink',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,    quantity: 1,

    style: 'Modern',
    ARurl: "assets/s7/besame_chair.gltf"
);

final p8= ProductModel(
    name: 'closet ',    quantity: 1,

    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s8/closet.png',
    price: 8500,
    color: 'Black',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',

    ARurl: "assets/s8/closet.gltf"
);

final p9= ProductModel(
    name: 'blue living couch',    quantity: 1,

    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s9/couch.png',
    price: 3025,
    color: 'Blue',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s9/couch.gltf"
);
final p10= ProductModel(
    name: 'beige living couch ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s10/sofa.png',
    price: 3025,
    color: 'Beige',    quantity: 1,

    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s10/sofa.gltf"
);
final p11= ProductModel(
    name: 'home chair ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s11/chair.png',
    price: 720,
    color: 'Dark white',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',    quantity: 1,

    ARurl: "assets/s11/chair.gltf"
);
final p12= ProductModel(
    name: 'black gaming chair ',    quantity: 1,

    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s12/chair.png',
    price: 5600,
    color: 'Black',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s12/chair.gltf"
);
final p13= ProductModel(
    name: 'red office chair ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s13/chair.png',    quantity: 1,

    price: 1230,
    color: 'Red',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s13/chair.gltf"
);
final p14= ProductModel(
    name: 'black office chair ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s14/chair.png',
    price: 3025,
    color: 'Black',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',    quantity: 1,

    rating: 5,
    style: 'Modern',
    ARurl: "assets/s14/chair.gltf"
);
final p15= ProductModel(
    name: 'white home sofa',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s15/sofa.png',
    price: 4500,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,    quantity: 1,

    style: 'Modern',
    ARurl: "assets/s15/sofa.gltf"
);
final p16= ProductModel(
    name: 'sofa chair ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s16/sofa_chair.png',    quantity: 1,

    price: 1010,
    color: 'Black',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',

    ARurl: "assets/s16/sofa_chair.gltf"
);
final p17= ProductModel(
    name: 'green sofa chair ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s17/sofa_chair.png',    quantity: 1,

    price: 1200,
    color: 'Green',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s17/sofa_chair.gltf"
);
final p18= ProductModel(
    name: 'home sofa ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s18/sofa.png',    quantity: 1,

    price: 5400,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s18/sofa.gltf"
);
final p19= ProductModel(
    name: 'home sofa ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s19/sofa.png',
    price: 3025,    quantity: 1,

    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s19/sofa.gltf"
);
final p20= ProductModel(
    name: 'wardrobe',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s20/wardrobe.png',
    price: 9030,    quantity: 1,

    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s20/wardrobe.gltf"
);
final p21= ProductModel(
    name: 'dining table with chairs',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s21/dining_table_and_chairs.png',
    price: 6530,    quantity: 1,

    color: 'Black',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s21/dining_table_and_chairs.gltf"
);
final p22= ProductModel(
    name: 'home chair  ',    quantity: 1,

    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s22/chair.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s22/chair.gltf"
);
final p23= ProductModel(
    name: 'wooden dinner table  ',    quantity: 1,

    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s23/wooden_dinner_table.png',
    price: 1200,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',

    ARurl: "assets/s23/wooden_dinner_table.gltf"
);
final p24= ProductModel(
    name: 'mid table  ',
    manufacturer: 'Carl MH Barenbrug',    quantity: 1,

    imageUrl: 'assets/s24/mid_table.png',
    price: 320,
    color: 'Black',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s24/mid_table.gltf"
);
final p26= ProductModel(
    name: 'table  ',    quantity: 1,

    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s26/wooden_table_grass.png',
    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s26/wooden_table_grass.gltf"
);
final p27= ProductModel(
    name: 'drawer  ',
    manufacturer: 'Carl MH Barenbrug',    quantity: 1,

    imageUrl: 'assets/s27/drawer.png',
    price: 560,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s27/drawer.gltf"
);
final p28= ProductModel(
    name: 'floor table  ',
    manufacturer: 'Carl MH Barenbrug',    quantity: 1,

    imageUrl: 'assets/s28/small_table.png',
    price: 200,
    color: 'Black Wooden',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s28/small_table.gltf"
);
final p29= ProductModel(
    name: 'american chair  ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s29/american_chair.png',
    price: 770,    quantity: 1,

    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s29/american_chair.gltf"
);

final p31= ProductModel(
    name: ' shelf ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s31/shelf.png',
    price: 2323,
    color: 'Wooden Yellow',    quantity: 1,

    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s31/shelf.gltf"
);
final p32= ProductModel(
    name: ' two chairs with table  ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s32/2_chairs.png',
    price: 3025,    quantity: 1,

    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s32/2_chairs.gltf"
);
final p33= ProductModel(
    name: ' drawer  ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s33/drawer.png',    quantity: 1,

    price: 3025,
    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s33/drawer.gltf"
);
final p34= ProductModel(
    name: ' white chair  ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s34/normal_chair.png',
    price: 300,    quantity: 1,

    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s34/normal_chair.gltf"
);
final p35= ProductModel(
    name: ' two seats sofa ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s35/normal_2_chairs.png',
    price: 820,
    color: 'White',    quantity: 1,

    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s35/normal_2_chairs.gltf"
);
final p36= ProductModel(
    name: 'dining table ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s36/dining_table.png',
    price: 4000,    quantity: 1,

    color: 'Black and White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s36/dining_table.gltf"
);
final p37= ProductModel(
    name: 'three seats sofa ',
    manufacturer: 'Carl MH Barenbrug',
    imageUrl: 'assets/s37/sofa.png',
    price: 1720,    quantity: 1,

    color: 'White',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
    ARurl: "assets/s37/sofa.gltf"
);

final List <ProductModel> productList = [
p1,p5,p6,p7,p19
,p3,p4,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p20,p21,p22,p23,p24,p28,p27,p26,p29,p31,p32,p33,p34,p35,p36,p37
/*  _product4,//1
  _product2,//2
  _product3,//3
  _product1,//4
  _product5,//5
  _product6,//6
  _product7,//7
  _product8,//8
  _product9,//9
  _product10,//10
  _product11,//11
  _product12,//12
  _product13,//13
  _product14,//14
  _product15,//15
  _product16,//16
  _product17,//17
  _product18,//18
  _product19,//19
  _product20,//20
  _product21,//21
  _product22,//21
  _product23,//22
  _product24,//23
  _product4,
  _product17,
  _product25,//s25
  _product26,//s26
  _product27,//s27
  _product29,//s29
  _product30,//s30
 // _product16,//s17
  _product8,//s14
  _product21,//s13
  _product7,//s1
 // _product15,//s20*/
/*webproduct1,
  webproduct2,webproduct3,webproduct4,webproduct5,webproduct6,webproduct7,webproduct8,webproduct9,webproduct10*/
];

final auth=FirebaseAuth.instance;
String  name ="" ;

final TextEditingController email = TextEditingController() ;

final TextEditingController password= TextEditingController();

final TextEditingController PhoneNumber= TextEditingController();
final commentRef = FirebaseFirestore.instance.collection("comments");

RegExp passwordValid= RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
double password_strength =0;
late User user;

final formKey =GlobalKey<FormState>();
final TextEditingController userName= TextEditingController();
// final TextEditingController PhoneNumber= TextEditingController();
List<String> categoryList = [
  'Interiors',
  'Furniture',
  'Moods',
  'Creators',
  'Home Appliances'
];