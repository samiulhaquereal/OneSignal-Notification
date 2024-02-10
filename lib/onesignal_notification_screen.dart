import 'package:flutter/material.dart';

class DisplayOneSignalNotificationScreen extends StatelessWidget {
  const DisplayOneSignalNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var notification = Get.arguments;
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: tDefaultPadding.h, horizontal: tDefaultPadding.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                '${notification['pic'].toString()}',
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  } else {
                    return Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                              : null,
                        ),
                      ),
                    );
                  }
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: tDefaultPadding2.h, horizontal: tDefaultPadding2.h),
                child: Text('${notification['title']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: tTextSize2.sp),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: tDefaultPadding2.h, horizontal: tDefaultPadding2.h),
                child: Text('${notification['details']}'),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}