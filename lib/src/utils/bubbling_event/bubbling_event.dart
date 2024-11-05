// import 'package:pos/src/utils/bubbling_event/bubbling_state.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'bubbling_event.g.dart';

// TODO: Wait for riverpod v3 to be released for generic types support
// @riverpod
// class BubblingStream<T> extends _$BubblingStream {
//   void addListener(BubblingListener<T> listener) {
//     final listeners = state.listeners;
//     listeners.add(listener);
//     state = state.copyWith(listeners: listeners);
//   }

//   @override
//   BubblingState<T> build(Stream<T> stream) =>
//       BubblingState<T>(stream: stream..listen(_internalListener));

//   void removeListener(BubblingListener<T> listener) {
//     final listeners = state.listeners;
//     listeners.remove(listener);
//     state = state.copyWith(listeners: listeners);
//   }

//   void _internalListener(T value) {
//     for (final listener in state.listeners) {
//       if (listener(value)) {
//         break;
//       }
//     }
//   }
// }
