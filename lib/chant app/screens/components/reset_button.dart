import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/chant_count_provider.dart';


class ResetButton extends StatelessWidget {
  const ResetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    var countProviderF = Provider.of<ChantCounterProvider>(context, listen: false);

    return CupertinoButton(
      padding:
      const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      color: Colors.black.withOpacity(0.6),
      child: Text(
        'Reset',
        style: TextStyle(
          fontSize:
          MediaQuery.of(context).size.height * 0.014,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      onPressed: () async {
        await countProviderF.resetCurrentCount();
      },
    );
  }
}
