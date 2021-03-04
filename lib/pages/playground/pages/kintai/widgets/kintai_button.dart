// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:koheikanagu_github_io/pages/playground/pages/kintai/kintai_page.dart';
//
// class KintaiButton extends HookWidget {
//   const KintaiButton({Key key}) : super(key: key);
//
//   TextStyle get _textStyle => const TextStyle(
//         fontSize: 64,
//         fontWeight: FontWeight.bold,
//         color: Colors.white,
//       );
//
//   @override
//   Widget build(BuildContext context) {
//     final notifier = useProvider(timeCardNotifier);
//
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         const Spacer(),
//         FittedBox(
//           child: Column(
//             children: <Widget>[
//               MaterialButton(
//                 color: Colors.blue,
//                 onPressed: notifier.punchIn,
//                 child: Text('出勤', style: _textStyle),
//               ),
//               Container(height: 12),
//               useProvider(timeCardNotifier.state).when(
//                 (uid, today, punchInTime, punchOutTime) =>
//                     Text(punchInTime?.toIso8601String() ?? '未設定'),
//                 notSignedIn: () => const Text('未サインイン'),
//                 undefined: () => const Text('未打刻'),
//                 error: () => const Text('エラー'),
//               )
//             ],
//           ),
//         ),
//         const Spacer(),
//         FittedBox(
//           child: Column(
//             children: <Widget>[
//               MaterialButton(
//                 color: Colors.red,
//                 onPressed: notifier.punchOut,
//                 child: Text('退勤', style: _textStyle),
//               ),
//               Container(height: 12),
//               useProvider(timeCardNotifier.state).when(
//                 (uid, today, punchInTime, punchOutTime) =>
//                     Text(punchOutTime?.toIso8601String() ?? '未設定'),
//                 notSignedIn: () => const Text('未サインイン'),
//                 undefined: () => const Text('未打刻'),
//                 error: () => const Text('エラー'),
//               )
//             ],
//           ),
//         ),
//         const Spacer(),
//       ],
//     );
//   }
// }
