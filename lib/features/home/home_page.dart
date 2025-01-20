import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_guitar_tuner/core/tuning_provider.dart';
import 'package:mini_guitar_tuner/features/home/widgets.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tuning = context.watch<TuningProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text(tuning.currentTuningData.title ?? 'Mini tuner'),
        actions: [],
      ),
      body: tuning.getTuning() == null
          ? Center(
              child: CircularProgressIndicator(
                strokeCap: StrokeCap.round,
                strokeWidth: 5,
              ),
            )
          : Center(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                ...tuning.currentTuningData.strings
                    .map(
                      (item) => SingleStringWidget(data: item),
                    ),
                SizedBox(height: 100.h),
              ]),
            ),
    );
  }
}
