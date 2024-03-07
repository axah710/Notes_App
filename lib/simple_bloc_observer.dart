import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    if (kDebugMode) {
      print("change=$change");
    }
  }

  @override
  void onClose(BlocBase bloc) {
    if (kDebugMode) {
      print("close=$bloc");
    }
  }

  @override
  void onCreate(BlocBase bloc) {
    if (kDebugMode) {
      print("create=$bloc");
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {}

  @override
  void onEvent(Bloc bloc, Object? event) {}

  @override
  void onTransition(Bloc bloc, Transition transition) {}
}
