import 'package:alzikr_alhakim/core/utils/assets.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  const QuranItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Directionality(
          textDirection: TextDirection.rtl,
          child: ListTile(
            horizontalTitleGap: 20,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            leading: Container(
              width: 36,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(Assets.imagesAvatar)),
              ),
              child: Center(child: Text("١", style: Styles.medium16)),
            ),
            title: Text("الفاتحة", style: Styles.semiBold18),
            subtitle: Text("مكيه   • ٧ ايات", style: Styles.light12),
            trailing: Text("Al-Fatihah", style: Styles.bold18),
          ),
        ),
        const Divider(thickness: 2),
      ],
    );
  }
}
