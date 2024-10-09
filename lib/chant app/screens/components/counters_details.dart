import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/chant_count_provider.dart';

class CountersDetails extends StatelessWidget {
  const CountersDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    var countProviderT = Provider.of<ChantCounterProvider>(context);

    return  Padding(
      padding: const EdgeInsets.only(left: 6.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Mala Count
          Row(
            children: [
              const Text('Mala Count : ', style: TextStyle(fontWeight: FontWeight.bold),),
              const BlackCountBox(value: 108,),
              const Text(' x ', style: TextStyle(fontWeight: FontWeight.bold),),
              BlackCountBox(value: countProviderT.chantModel.malaCount,),
            ],
          ),

          // Total count
          Row(
            children: [
              const Text('Total Count : ', style: TextStyle(fontWeight: FontWeight.bold),),
              BlackCountBox(value: countProviderT.chantModel.totalCount,),
            ],
          ),

          // Current count
          Row(
            children: [
              const Text('Current Count : ', style: TextStyle(fontWeight: FontWeight.bold),),
              BlackCountBox(value: countProviderT.chantModel.currentCount,),
            ],
          ),
        ],
      ),
    );
  }
}

class BlackCountBox extends StatelessWidget {
  const BlackCountBox({
    super.key, required this.value,
  });

  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          borderRadius: BorderRadius.circular(8)
      ),
      child: Text(value.toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
