import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/intro_provider.dart';


class IntroImage extends StatelessWidget {
  const IntroImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    IntroProvider introProviderT = Provider.of<IntroProvider>(context);


    return AspectRatio(
      aspectRatio: 1.2,
      child: Image.asset('assets/images/intro/img${introProviderT.currentPage + 1}.png'),
    );
  }
}
