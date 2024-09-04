import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness/utils/extensions/sizedbox_extension.dart';
import 'package:fitness/views/screens/trainer/trainer_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/trainer.dart';
import '../../utils/constants/app_colors.dart';

class TrainerCard extends StatelessWidget {
  final Trainer trainer;

  const TrainerCard({
    super.key,
    required this.trainer,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => TrainerScreen(trainer: trainer),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        padding: EdgeInsets.fromLTRB(16.w, 16.h, 9.w, 16.h),
        decoration: BoxDecoration(
          color: AppColors.black2C, // Dark background color
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              height: 64.h,
              width: 64.w,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: CachedNetworkImage(
                imageUrl: trainer.imageUrl,
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(color: AppColors.yellow1),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            16.width,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        trainer.fullName,
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      8.width,
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 2.h),
                        decoration: BoxDecoration(
                          color: AppColors.yellow1,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          trainer.rating.toString(),
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  2.height,
                  Text(
                    trainer.expertise,
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 11.sp,
                    ),
                  ),
                  12.height,
                  Text(
                    '${trainer.experience} years experience',
                    style: GoogleFonts.openSans(
                      color: AppColors.yellow1,
                      fontSize: 11.sp,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 18.r,
            ),
          ],
        ),
      ),
    );
  }
}
