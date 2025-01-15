import 'package:alzikr_alhakim/features/quran/presentation/manager/build_quran/build_quran_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class QuranTextField extends StatelessWidget {
  const QuranTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final buildQuran = context.read<BuildQuranBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 40,
        child: TextField(
          onChanged: (value) {
            buildQuran.add(WriteSuraEvent(suraName: value));
          },
          textAlign: TextAlign.right,
          style: Styles.semiBold14,
          textDirection: TextDirection.rtl,
          controller: TextEditingController(),
          cursorColor: AppColors.primaryColor,
          decoration: InputDecoration(
            border: customBorder(),
            enabledBorder: customBorder(),
            focusedBorder: customBorder(),
            hintText: "ابحث عن السورة التي ترغب فيها",
            hintStyle: Styles.extraLight12,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 4, horizontal: 32),
            suffixIcon: Transform.rotate(
              angle: 3.14 * 90 / 180,
              child: const Icon(Icons.search,
                  size: 18, color: AppColors.blackColor),
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
