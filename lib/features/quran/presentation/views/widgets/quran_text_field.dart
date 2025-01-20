import 'package:alzikr_alhakim/core/models/text_field_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_text_field.dart';
import '../../manager/quran/quran_cubit.dart';

class QuranTextField extends StatelessWidget {
  const QuranTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final quran = context.read<QuranCubit>();
    return CustomTextField(
        textFieldModeld: TextFieldModel(
            hintText: "ابحث عن السورة التي ترغب فيها",
            onChanged: (value) {
              quran.searchQuran(sura: value);
            }));
  }
}
