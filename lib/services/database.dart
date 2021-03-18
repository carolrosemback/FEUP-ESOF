import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  // Collection Reference
  final CollectionReference userCollection = Firestore.instance.collection('users');
}