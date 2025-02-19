import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import '../../data/repo/prayer_repo_impl.dart';
import '../manager/prayer/prayer_cubit.dart';
import 'widgets/prayer_view_body.dart';

class PrayerView extends StatelessWidget {
  const PrayerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PrayerCubit(PrayerRepoImpl()),
      child: CustomScaffold(child: PrayerViewBody()),
    );
  }
}
