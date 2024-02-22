import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:firebase_storage/firebase_storage.dart';

part 'storage_providers.g.dart';

@riverpod
Future<String> image(ImageRef ref, String imagePath) async {
  final firebaseStorage = FirebaseStorage.instance;
  try {
    final url = await firebaseStorage.ref(imagePath).getDownloadURL();
    return url;
  } catch (e) {
    debugPrint('Error: $e');
    return '';
  }
}

@riverpod
String imageUrl(ImageUrlRef ref, String imagePath) {
  if (imagePath != "") {
    return ref.watch(imageProvider(imagePath)).when(
          data: (String url) => url,
          error: (error, stack) {
            debugPrint('Error: $error');
            return "";
          },
          loading: () => "",
        );
  } else {
    return "";
  }
}
