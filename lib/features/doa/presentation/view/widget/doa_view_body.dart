import 'package:alzikr_alhakim/features/doa/presentation/view/widget/doa_header_and_textfield_selection.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/widget/doa_sliver_list.dart';
import 'package:flutter/material.dart';

class DoaViewBody extends StatelessWidget {
  const DoaViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: DoaHeaderAndTextfieldSelection(),
        ),
        DoaSliverList(),
      ],
    );
  }
}
