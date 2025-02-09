import 'package:alzikr_alhakim/core/utils/navigation.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/features/doa/presentation/view/doa_content_view.dart';
import 'package:alzikr_alhakim/features/quran/presentation/views/widgets/list_tile_leading.dart';
import 'package:flutter/material.dart';

class DoaItem extends StatelessWidget {
  const DoaItem({
    super.key,
    required this.doa,
  });

  final DoaModel doa;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (doa.id != null && doa.id == 1) const Divider(),
        ListTile(
          horizontalTitleGap: 20,
          onTap: () => Navigation.push(context, DoaContentView(doa: doa)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          leading: ListTileLeading(suraNumber: doa.id.toString()),
          title: Text(doa.category!, style: Styles.semiBold18),
        ),
        const Divider(thickness: 2),
      ],
    );
  }
}
