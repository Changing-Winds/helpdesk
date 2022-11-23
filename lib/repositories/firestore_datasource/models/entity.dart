import 'package:cloud_firestore/cloud_firestore.dart';

abstract class Entity {
  static fromDocument(DocumentSnapshot doc) {}
  // Map<String, dynamic> fromJson() {
  //   return {};
  // }

  // void updateWith(dynamic newItem);
}
