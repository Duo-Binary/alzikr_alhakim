// import 'package:alzikr_alhakim/core/utils/assets.dart';
// import 'package:alzikr_alhakim/core/utils/styles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:quran/quran.dart';

// class SuraHeaderWidget extends StatelessWidget {
//   const SuraHeaderWidget({super.key, required this.e});
//   final dynamic e;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 55.h,
//       child: Stack(
//         children: [
//           Center(child: Image.asset(Assets.imagesSuraHeader)),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 19.7.w, vertical: 10.h),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Text("اياتها\n${getVerseCount(e["surah"])}",
//                     textAlign: TextAlign.center, style: Styles.reqular5),
//                 Center(
//                     child: RichText(
//                         text: TextSpan(
//                             text: e["surah"].toString(),
//                             style: Styles.reqular24))),
//                 Center(
//                   child: Text("ترتيبها\n${e["surah"]}",
//                       textAlign: TextAlign.center, style: Styles.reqular5),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
