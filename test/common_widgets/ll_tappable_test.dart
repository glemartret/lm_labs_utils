// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:lm_labs_utils/src/common_widgets/ll_tappable.dart';

// void main() {
//   group('LLTappable', () {
//     testWidgets('should display child widget', (tester) async {
//       await tester.pumpWidget(
//         MaterialApp(
//           home: Scaffold(
//             body: LLTappable(
//               child: Container(),
//             ),
//           ),
//         ),
//       );

//       expect(find.byType(Container), findsOneWidget);
//     });

//     testWidgets('should call onTap when tapped', (tester) async {
//       var onTapCalled = false;

//       await tester.pumpWidget(
//         MaterialApp(
//           home: Scaffold(
//             body: LLTappable(
//               child: SizedBox.fromSize(
//                 size: const Size.square(10),
//               ),
//               onTap: () {
//                 onTapCalled = true;
//               },
//             ),
//           ),
//         ),
//       );

//       await tester.tap(find.byType(LLTappable));
//       await tester.pump(const Duration(milliseconds: 550));

//       expect(onTapCalled, true);
//     });

//     testWidgets('should not call onTap when tapped while processing',
//         (tester) async {
//       var onTapCalled = 0;

//       await tester.pumpWidget(
//         MaterialApp(
//           home: Scaffold(
//             body: LLTappable(
//               child: Container(),
//               onTap: () async {
//                 onTapCalled += 1;
//                 await Future.delayed(const Duration(milliseconds: 100));
//               },
//             ),
//           ),
//         ),
//       );

//       await tester.tap(find.byType(LLTappable));
//       await tester.pump(const Duration(seconds: 1));
//       await tester.tap(find.byType(LLTappable));
//       await tester.pump();

//       expect(onTapCalled, 1);
//     });
//   });
// }
