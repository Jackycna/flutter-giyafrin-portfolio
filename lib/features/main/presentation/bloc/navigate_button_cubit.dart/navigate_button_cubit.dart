import 'package:flutter_bloc/flutter_bloc.dart';

class NavigateButtonCubit extends Cubit<int> {
  NavigateButtonCubit() : super(0);
  void changeButton({required int value}) {
    if (state != value) {
      emit(value);
    }
  }
}
