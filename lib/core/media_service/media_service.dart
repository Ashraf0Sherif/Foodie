import 'dart:io';

import 'package:image_picker/image_picker.dart';

class MediaService {
  MediaService._();

  static Future<File?> getImageFromGallery() async {
    final XFile? file =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (file != null) {
      return File(file.path);
    }
    return null;
  }
}
