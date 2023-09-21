import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskapp/cubits/add_item_cubit/add_item_cubit.dart';
import 'package:taskapp/models/item_model.dart';
import 'package:taskapp/views/add_item_screen.dart';
import 'package:taskapp/views/custom_widgets/no_items_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Items Screen"),
        centerTitle: true,
      ),
      body:BlocBuilder<AddItemCubit,List<ItemModel>>(
        builder: (context,state) {
          return state.isEmpty?
              NoItemsWidget()
              :ListView.builder(
            itemCount: state.length,
            itemBuilder:(context,index)=>SizedBox(
              height: 100.sp,
              child: Card(
                elevation: 5.sp,
                child: Padding(
                  padding:  EdgeInsets.all(10.0.sp),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Color: ${state[index].color}",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Name: ${state[index].name}",style: TextStyle(color: Colors.black),),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text("Quantity:${state[index].quantity} ",style: TextStyle(color: Colors.black),),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ) ,
          );
        }
      ),
      floatingActionButton: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddItems()));
        },
        child: Container(
          height: 40.sp,
          width: 150.sp,
          decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(20.sp)
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: Text("Add Items")),
          ),
        ),
      ),
    );
  }
}
