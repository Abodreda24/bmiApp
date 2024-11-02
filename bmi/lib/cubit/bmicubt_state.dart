part of 'bmicubt_cubit.dart';

@immutable
sealed class BmicubtState {}

final class BmicubtInitial extends BmicubtState {}
final class Addwidth extends BmicubtState {}
final class Removewidth extends BmicubtState {}
final class Addage extends BmicubtState {}
final class Removeage extends BmicubtState {}
final class IsMaleOrfemal extends BmicubtState {}
final class value_1 extends BmicubtState {}
