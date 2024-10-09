import 'package:advance_flutter_ch1/chant%20app/provider/chant_count_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class CounterButton extends StatelessWidget {
  const CounterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    var countProviderT = Provider.of<ChantCounterProvider>(context);
    var countProviderF = Provider.of<ChantCounterProvider>(context, listen: false);

    return CupertinoButton(
      onPressed: () async {
        await countProviderF.increaseCount();
      },
      pressedOpacity: 0.8,
      padding: EdgeInsets.zero,
      child: CircleAvatar(
        radius: MediaQuery.of(context).size.height * 0.2,
        backgroundColor:
        Theme.of(context).scaffoldBackgroundColor.withOpacity(0.7),
        child: CircleAvatar(
          backgroundColor: Colors.black.withOpacity(0.8),
          radius: MediaQuery.of(context).size.height * 0.16,
          child: Text(
            countProviderT.chantModel.currentCount.toString(),
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.04,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
