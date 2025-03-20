import 'package:alzikr_alhakim/features/doa/presentation/view/widget/doa_text_field.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/widget/doa_view_header.dart';
import 'package:flutter/material.dart';

class DoaHeaderAndTextfieldSelection extends StatelessWidget {
  const DoaHeaderAndTextfieldSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 24),
        DoaViewHeader(),
        SizedBox(height: 24),
        DoaTextField(),
        SizedBox(height: 24),
      ],
    );
  }
}
