part of 'add_item_cubit.dart';

@immutable
abstract class AddItemState {}

class AddItemInitial extends AddItemState {}
class AddItemLoading extends AddItemState {}
class AddItemLoaded extends AddItemState {
  List<ItemModel> items;
  AddItemLoaded({required this.items});
}
class AddItemError extends AddItemState {
  String err;
  AddItemError({required this.err});
}
