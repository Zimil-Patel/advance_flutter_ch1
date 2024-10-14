import 'package:advance_flutter_ch1/gallery%20auth/utils.dart';

class GalleryModel {
  String name;
  int length;
  static List<GalleryModel> list = [];

  GalleryModel({required this.name, required this.length});

  factory GalleryModel.fromList(Map map) => GalleryModel(
        name: map['name'],
        length: map['length'],
      );

  static void convertToList() {
    list = albums
        .map(
          (e) => GalleryModel.fromList(e),
        )
        .toList();
  }
}
