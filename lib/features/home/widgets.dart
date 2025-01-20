import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_guitar_tuner/core/sound_provider.dart';
import 'package:mini_guitar_tuner/models/single_string_model.dart';
import 'package:provider/provider.dart';

class SingleStringWidget extends StatelessWidget {
  final SingleStringModel data;

  const SingleStringWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final sound = context.read<SoundProvider>();

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: Text(
              data.label.toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
          ),
          SizedBox(height: 4.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Builder(builder: (context) {
              final widgetWidth = MediaQuery.of(context).size.width - 32.w;

              return SizedBox(
                width: double.infinity,
                height: 2,
                child: Consumer<SoundProvider>(builder: (context, provider, _) {
                  //TODO do calculations

                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.green,
                          height: 2,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          color: Colors.white,
                          height: 6,
                          width: 1,
                        ),
                      ),
                      Positioned(
                        top: -2,
                        child: Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              );
            }),
          ),
        ],
      ),
    );
  }
}
