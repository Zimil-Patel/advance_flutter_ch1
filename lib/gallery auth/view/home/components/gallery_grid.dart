import 'package:advance_flutter_ch1/gallery%20auth/model/gallery_model.dart';
import 'package:flutter/material.dart';

class GalleryGrid extends StatelessWidget {
  const GalleryGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: GalleryModel.list.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 0.8),
      itemBuilder: (context, index) => Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.width / 3 - 12 * 2,
            width: MediaQuery.of(context).size.width / 3 - 12 * 2,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.rectangle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    'assets/images/gallery/${GalleryModel.list[index].name}.png'),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Column(
            children: [
              Text(
                GalleryModel.list[index].name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '${GalleryModel.list[index].length}',
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
