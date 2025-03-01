// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

class TBlocObserver extends BlocObserver {
  @override
  // ignore: avoid_renaming_method_parameters
  void onCreate(cubit) {
    super.onCreate(cubit);
    print('onCreate -- ${cubit.runtimeType}');
  }

  @override
  // ignore: avoid_renaming_method_parameters
  void onChange(cubit, Change change) {
    super.onChange(cubit, change);
    // ignore: avoid_print
    print('onChange -- ${cubit.runtimeType}, $change');
  }

  @override
  // ignore: avoid_renaming_method_parameters
  void onError(cubit, Object error, StackTrace stackTrace) {
    // ignore: avoid_print
    print('onError -- ${cubit.runtimeType}, $error');
    super.onError(cubit, error, stackTrace);
  }

  @override
  // ignore: avoid_renaming_method_parameters
  void onClose(cubit) {
    super.onClose(cubit);
    // ignore: avoid_print
    print('onClose -- ${cubit.runtimeType}');
  }
}
