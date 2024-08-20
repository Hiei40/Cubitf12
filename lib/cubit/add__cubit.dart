import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add__state.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit() : super(AddInitial());
  int counter = 0;

  void incrementCounter() {

    counter++;
emit(Addone());
  }
void decreaseCounter(){
    counter--;
    emit(Decressone());
}
  void equalzero(){
    counter=0;
    emit(Zero());
  }
}
