import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

Future<dynamic>uploadImage(file) async {
  final _firebaseStorage = FirebaseStorage.instance;
 var snapshot = await _firebaseStorage.ref()
          .child('images/${FirebaseAuth.instance.currentUser?.uid}/${file.toString().replaceAll('.', '').trim().replaceAll('/', '')}')
          .putFile(file);
      var downloadUrl = await snapshot.ref.getDownloadURL();
   return downloadUrl;

}