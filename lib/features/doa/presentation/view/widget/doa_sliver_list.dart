import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_cubit.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/widget/doa_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoaSliverList extends StatelessWidget {
  const DoaSliverList({super.key});

  @override
  Widget build(BuildContext context) {
 final doa = context.read<DoaCubit>();
    return BlocBuilder<DoaCubit, DoaState>(
      builder: (context, state) {
        return SliverList.builder(
            itemCount: doa.searchList.isEmpty ? 132 : doa.searchList.length,
            itemBuilder: (context, index) {
              final list = doa.searchList.isEmpty
                  ? doa.doaList[index]
                  : doa.searchList[index];

              return DoaItem(doa: list);
            });
      },
    );
  }
}