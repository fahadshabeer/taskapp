import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_item_state.dart';

class AddItemCubit extends Cubit<AddItemState> {
  AddItemCubit() : super(AddItemInitial());
  addItem()async
  {
    emit(AddItemLoading());
    try{

    }catch(e)
    {
      if(e is SocketException)
        {
          emit(AddItemError(err: e.message.toString()));
        }
    }
  }
}
