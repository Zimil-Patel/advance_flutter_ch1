import 'package:flutter/material.dart';

class OutlinedTextBox extends StatelessWidget {
  const OutlinedTextBox({
    super.key, this.textInputType, required this.hintText, this.maxLine, required this.iconData,
  });

  final TextInputType? textInputType;
  final String hintText;
  final int? maxLine;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: maxLine != null ? maxLine! * 24 : 60,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(iconData, color: Colors.grey,),
          )),
          Expanded(
            child: TextField(
              onTapOutside: (event) => FocusManager.instance.primaryFocus!.unfocus(),
              cursorColor: Colors.blue,
              keyboardType: textInputType ?? TextInputType.text,
              textAlignVertical: TextAlignVertical.center,
              maxLines: maxLine ?? 1,
              decoration: InputDecoration(
                hintText: hintText,
                focusedBorder: InputBorder.none,
                enabledBorder:  InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}