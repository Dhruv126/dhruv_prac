import 'package:dhruv_prac/const/app_colors.dart';
import 'package:dhruv_prac/model/cat_details_model.dart';
import 'package:dhruv_prac/ui/extension/sizedbox_extension.dart';
import 'package:flutter/material.dart';

import '../../core/services/api_service/end_points.dart';
import 'package:dhruv_prac/ui/extension/text_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatDetailsScreen extends StatelessWidget {
  final CatDetailsModel catDetailsModel;
  const CatDetailsScreen({super.key, required this.catDetailsModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "CatDetailsScreen".appCommonText(color: AppColors.appWhite),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 15.w),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ColoredBox(
                color: Colors.grey,
                child: Image.network(
                  EndPoints.imageUrl(catDetailsModel.referenceImageId),
                  fit: BoxFit.cover,
                  height: 200.h,
                  width: double.infinity,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.error),
                )),
            12.h.H(),
            (catDetailsModel.name?? "").appCommonText(),
            15.h.H(),
            (catDetailsModel.description ?? "").appLightText(size: 14),
            
          ]),
        ),
      ),
    );
  }
}
