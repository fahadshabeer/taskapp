import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskapp/views/add_item_screen.dart';

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
      body: ListView(
        children: [
          SizedBox(
            height: 20.sp,
          ),
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),
              color: Colors.white,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20.sp,
                ),
                Icon(Icons.lock_clock),
                SizedBox(
                  height: 10.sp,
                ),
                const Text(
                  "There is no item in the list",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                const Text(
                  "Please press the Add  button to add items",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.sp,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              InkWell(
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
            Container(
              height: 40.sp,
              width: 150.sp,
              decoration: BoxDecoration(
                color: Colors.pink,
                  borderRadius: BorderRadius.circular(20.sp)
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(child: Text("Show Items")),
              ),
            ),
          ],)
        ],
      ),

    );
  }
}
