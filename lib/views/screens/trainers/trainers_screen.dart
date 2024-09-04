import 'package:fitness/utils/constants/assets.dart';
import 'package:fitness/utils/extensions/sizedbox_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../controllers/trainers_controller.dart';
import '../../widgets/trainer_card.dart';

class TrainersScreen extends StatelessWidget {
  TrainersScreen({super.key});

  final trainersController = TrainersController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24.w, 46.h, 24.w, 0.h),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Assets.backCircleSvg,
                    height: 32.h,
                    width: 32.w,
                  ),
                  25.width,
                  Text(
                    "Fitness Trainers",
                    style: TextStyle(
                      fontFamily: 'Integral',
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                    ),
                  ),
                ],
              ),
              5.height,
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 20.h),
                  itemCount: trainersController.trainers.length,
                  itemBuilder: (context, index) {
                    final trainer = trainersController.trainers[index];
                    return TrainerCard(trainer: trainer);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
