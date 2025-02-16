import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import 'widgets/sura_view_body.dart';

class SuraView extends StatelessWidget {
  const SuraView({super.key, this.index = 0});
  final int index;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(child: SuraViewBody(index: index));
  }
}
