import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoItemsWidget extends StatelessWidget {
  const NoItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return     Center(
      child: Container(
        height: 200.sp,
        width: 1.sw,
        margin: EdgeInsets.symmetric(horizontal: 20.w),
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
    );
  }
}
