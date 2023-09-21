import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:taskapp/models/item_model.dart';

part 'add_item_state.dart';

class AddItemCubit extends Cubit<List<ItemModel>> {
  AddItemCubit() : super([]);
  List<ItemModel> items=[];
  addItem(ItemModel model)
  {
    List<ItemModel> itemsCopy=[];
      items.add(model);
    itemsCopy.addAll(items);
      emit(itemsCopy);
  }
}
