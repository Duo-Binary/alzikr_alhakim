import 'package:alzikr_alhakim/core/models/text_field_model.dart';
import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.textFieldModeld});
  final TextFieldModel textFieldModeld;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 40,
        child: TextField(
          onChanged: textFieldModeld.onChanged,
          textAlign: TextAlign.right,
          style: Styles.semiBold14,
          textDirection: TextDirection.rtl,
          cursorColor: AppColors.whiteColor,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.primaryColor,
            border: customBorder(),
            enabledBorder: customBorder(),
            focusedBorder: customBorder(),
            hintText: textFieldModeld.hintText,
            hintStyle: Styles.extraLight12,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 4, horizontal: 32),
            prefixIcon: Transform.rotate(
              angle: 3.14 * 90 / 180,
              child: const Icon(Icons.search,
                  size: 18, color: AppColors.whiteColor),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder customBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.primaryColor),
      borderRadius: BorderRadius.circular(25),
    );
  }
}
