import 'package:alzikr_alhakim/core/models/text_field_model.dart';
import 'package:alzikr_alhakim/core/widgets/custom_text_field.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoaTextField extends StatelessWidget {
  const DoaTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final doa = context.read<DoaCubit>();
    return CustomTextField(
        textFieldModeld: TextFieldModel(
            hintText: "ابحث عن الدعاء التي ترغب فيها",
            onChanged: (value) {
              doa.searchDoaa(doaa: value);
            }));
  
  }
}