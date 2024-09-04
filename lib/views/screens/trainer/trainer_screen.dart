import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness/utils/extensions/sizedbox_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/trainer.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/assets.dart';

class TrainerScreen extends StatelessWidget {
  const TrainerScreen({super.key, required this.trainer});

  final Trainer trainer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            width: double.infinity,
            height: 260.h,
            child: CachedNetworkImage(
              imageUrl: trainer.imageUrl,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(color: AppColors.yellow1),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 50.h,
            left: 24.w,
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset(
                Assets.backCircleSvg,
                height: 32.h,
                width: 32.w,
              ),
            ),
          ),
          Positioned(
            top: 230.h,
            child: Container(
              width: 375.w,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
              decoration: BoxDecoration(
                color: AppColors.black1C,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            trainer.fullName,
                            style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          6.height,
                          Text(
                            trainer.expertise,
                            style: GoogleFonts.openSans(
                              color: AppColors.yellow1,
                              fontSize: 13.sp,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 54.h,
                        width: 54.w,
                        padding: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                          color: AppColors.yellow1,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.phone,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  32.height,
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    decoration: BoxDecoration(
                      color: AppColors.black2C,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildStatColumn('Experience', trainer.experience),
                        _buildDivider(),
                        _buildStatColumn('Completed', trainer.completed),
                        _buildDivider(),
                        _buildStatColumn(
                            'Active Clients', trainer.activeClients),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildStatColumn(String label, int value) {
    return Column(
      children: [
        Text(
          value.toString(),
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontSize: 22.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        5.height,
        Text(
          label,
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontSize: 11.sp,
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      width: 1.w,
      height: 50.h,
      color: AppColors.black3A,
    );
  }
}
