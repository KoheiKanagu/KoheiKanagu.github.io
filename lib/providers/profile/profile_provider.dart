import 'package:firebase_storage/firebase_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final nyanProvider = FutureProvider(
  (ref) => FirebaseStorage.instance
      .ref('gs://kingu-42.appspot.com/assets/nyan.gif')
      .getDownloadURL(),
);
