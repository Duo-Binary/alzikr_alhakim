import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/core/constants/doa_data.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_bloc.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_state.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/widget/doa_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoaSliverList extends StatelessWidget {
  const DoaSliverList({super.key});

  @override
  Widget build(BuildContext context) {
 final doa = context.read<DoaBloc>();
    return BlocBuilder<DoaBloc, DoaState>(
      builder: (context, state) {
        return SliverList.builder(
            itemCount: doa.searchList.isEmpty ? 132 : doa.searchList.length,
            itemBuilder: (context, index) {
              final list = doa.searchList.isEmpty
                  ? doaData[index]
                  : doa.searchList[index];

              return DoaItem(doa: DoaModel.fromJson(list));
            });
      },
    );
  }
}