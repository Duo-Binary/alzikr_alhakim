import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import '../manager/doa/doa_bloc.dart';
import 'widget/doa_view_body.dart';

class DoaaView extends StatelessWidget {
  const DoaaView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoaBloc(),
      child: const CustomScaffold(child: DoaViewBody()),
    );
  }
}
