import 'package:alzikr_alhakim/core/utils/colors.dart';
import 'package:alzikr_alhakim/core/utils/format_verse_number.dart';
import 'package:alzikr_alhakim/core/utils/styles.dart';
import 'package:alzikr_alhakim/core/utils/show_success_pop_up.dart';
import 'package:alzikr_alhakim/features/doa/data/model/doa_model.dart';
import 'package:alzikr_alhakim/features/doa/presentation/manager/doa/doa_bloc.dart';
import 'package:flutter/material.dart';

class DoaCounterAndPageNumberBody extends StatelessWidget {
  const DoaCounterAndPageNumberBody({
    super.key,
    required this.doaaCubit,
    required this.doa,
  });

  final DoaBloc doaaCubit;
  final DoaModel doa;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 200, 186, 175),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (doaaCubit.currentVerseIndex != 0) {
                        doaaCubit.swapToNextVerseBackward(
                            length: doa.verses!.length);
                      }
                    },
                    child: Row(
                      spacing: 6,
                      children: [
                        Text(
                          formatVerseNumber(int.parse(
                              (doaaCubit.currentVerseIndex + 1).toString())),
                          style: Styles.doaaContent20.copyWith(
                              fontSize: 16, color: AppColors.primaryColor),
                        ),
                        const Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.primaryColor,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (doaaCubit.currentVerseIndex !=
                          doa.verses!.length - 1) {
                        doaaCubit.swapToNextVerseForward(
                            length: doa.verses!.length);
                      }
                    },
                    child: Row(
                      spacing: 6,
                      children: [
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.primaryColor,
                          size: 20,
                        ),
                        Text(
                          formatVerseNumber(
                              int.parse(doa.verses!.length.toString())),
                          style: Styles.doaaContent20.copyWith(
                            fontSize: 16,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Center(
          child: Transform.translate(
            offset: const Offset(0, -12),
            child: GestureDetector(
              onTap: () {
                if (doaaCubit.currentVerseIndex == doa.verses!.length - 1 &&
                    doaaCubit.currentCountIndex + 1 == doa.verses!.last.count) {
                  showCustomDialog(context,
                      content: 'لقد انهيت بنجاح ${doa.category}');
                } else {
                  if (doaaCubit.currentVerseIndex != doa.verses!.length) {
                    doaaCubit.changeCount(
                      count: doa.verses![doaaCubit.currentVerseIndex].count!,
                    );
                    if (doaaCubit.currentCountIndex ==
                        doa.verses![doaaCubit.currentVerseIndex].count) {
                      doaaCubit.swapToNextVerseForward(
                          length: doaaCubit.currentVerseIndex);
                    } else {}
                  }
                }
              },
              child: CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                radius: 28,
                child: Text(
                  formatVerseNumber(int.parse(
                      ((doa.verses![doaaCubit.currentVerseIndex].count! -
                              doaaCubit.currentCountIndex))
                          .toString())),
                  style: Styles.bold20.copyWith(
                      color: const Color.fromARGB(255, 245, 233, 221)),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
