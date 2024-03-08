import 'package:dhruv_prac/core/services/api_service/end_points.dart';
import 'package:dhruv_prac/model/cat_details_model.dart';
import 'package:dhruv_prac/ui/extension/sizedbox_extension.dart';
import 'package:dhruv_prac/ui/extension/text_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatCard extends StatelessWidget {
  final CatDetailsModel catDetailsModel;
  final VoidCallback onTap;
  const CatCard({super.key, required this.catDetailsModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80.h,
              width: 100.h,
              color: Colors.grey,
              child: Image.network(
                EndPoints.imageUrl(catDetailsModel.referenceImageId),
                height: 80.h,
                width: 100.h,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
              ),
            ),
            8.h.H(),
            (catDetailsModel.name ?? "").appCommonText(),
            8.h.H(),
            (catDetailsModel.description ?? "").appCommonText(size: 12,maxLine: 3,overflow: TextOverflow.ellipsis),
          ],
        ),
      ),
    );
  }
}
