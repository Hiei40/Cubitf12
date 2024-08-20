part of 'add__cubit.dart';

@immutable
sealed class AddState {}

final class AddInitial extends AddState {}
class Addone extends AddState{}
class Decressone extends AddState{}
class Zero extends AddState{}