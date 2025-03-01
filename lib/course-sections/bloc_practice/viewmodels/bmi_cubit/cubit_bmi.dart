import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ignition/course-sections/bloc_practice/viewmodels/bmi_cubit/bmi_states.dart';

class BmiCubit extends Cubit<BmiStates> {
  BmiCubit() : super(BmiInitialState());

  static BmiCubit get(context) => BlocProvider.of(context);

  bool isMaleSelected = true;
  double height = 150;
  int weight = 40;
  int age = 15;
  double heightInMeters = 0;

  double bmi = 0;

  void calcBMI() {
    bmi = weight / (heightInMeters * heightInMeters);
    emit(CaluclatedState());
  }

  void incrementAge() {
    age++;
    emit(IncrementAgeState());
  }

  void decrementAge() {
    age--;
    emit(DecrementAgeState());
  }

  void incrementWeight() {
    weight++;
    emit(IncrementWeightState());
  }

  void decrementWeight() {
    weight--;
    emit(DecrementWeightState());
  }

  void toggleMaleSelected() {
    isMaleSelected = !isMaleSelected;
    emit(ToggleMaleState());
  }

  void onChanged({required double value}) {
    height = value;
    emit(SetHeightState());
  }

  void convertToHeightInMeters() {
    heightInMeters = height / 100;
    emit(ConvertedState());
  }
}
