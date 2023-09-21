import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskapp/cubits/add_item_cubit/add_item_cubit.dart';
import 'package:taskapp/models/item_model.dart';

class AddItems extends StatelessWidget {
  AddItems({Key? key}) : super(key: key);
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("Add Item"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [
            SizedBox(height: 20.sp,),
            TextField(
              controller: txt1,
              cursorColor: Colors.black,
              style: const TextStyle(
                  color: Colors.black
              ),
              decoration: InputDecoration(
                hintText: "Enter Item name",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)
                ),
              ),
            ),
            SizedBox(height: 10.sp,),
            TextField(
              controller: txt2,
              cursorColor: Colors.black,
              style: const TextStyle(
                  color: Colors.black
              ),
              decoration: InputDecoration(
                hintText: "Enter Item color",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)
                ),
              ),
            ),
            SizedBox(height: 10.sp,),
            TextField(
              controller: txt3,
              cursorColor: Colors.black,
              style: const TextStyle(
                  color: Colors.black
              ),
              decoration: InputDecoration(
                filled: true,
                hintText: "Enter Item quantity",
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)
                ),
              ),
            ),
            SizedBox(height: 30.sp,),
            GestureDetector(
              onTap: () {
                if(txt1.text.isNotEmpty && txt2.text.isNotEmpty &&
                    txt3.text.isNotEmpty) {
                  var model = ItemModel(
                      name: txt1.text,
                      color: txt2.text,
                      quantity: txt3.text
                  );
                  context.read<AddItemCubit>().addItem(model);
                  print("item added");
                  Navigator.pop(context);
                }else{
                  print("please fill all fields");
                }
              },
              child: Container(
                height: 40.sp,
                width: 150.sp,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    color: Colors.pink
                ),
                child: const Center(child: Text("Add Item")),
              ),
            )

          ],
        ),
      ),
    );
  }
}
