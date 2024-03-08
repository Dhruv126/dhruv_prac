import 'package:dhruv_prac/const/app_strings.dart';
import 'package:dhruv_prac/core/services/api_service/end_points.dart';
import 'package:dhruv_prac/ui/extension/sizedbox_extension.dart';
import 'package:dhruv_prac/ui/extension/text_extension.dart';
import 'package:dhruv_prac/view/home/widgets/cat_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../const/app_colors.dart';
import '../../viewModel/home_view_model.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeViewModel homeViewModel;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      homeViewModel = Provider.of<HomeViewModel>(context, listen: false);
      homeViewModel.getCatDetails();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    homeViewModel = context.watch<HomeViewModel>();
    return Scaffold(
      appBar: AppBar(
          title:
              HomeStrings.homeScreen.appCommonText(color: AppColors.appWhite),
          elevation: 0),
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, childAspectRatio: 2 / 2),
              itemCount: homeViewModel.catDetailsList.length,
              itemBuilder: (context, index) => CatCard(
                catDetailsModel: homeViewModel.catDetailsList[index],
                onTap: () => homeViewModel.navigateToCatDetailsScreen(
                    homeViewModel.catDetailsList[index]),
              ),
            );
          } else {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 2 / 3.5),
              itemCount: homeViewModel.catDetailsList.length,
              itemBuilder: (context, index) => CatCard(
                catDetailsModel: homeViewModel.catDetailsList[index],
                onTap: () => homeViewModel.navigateToCatDetailsScreen(
                    homeViewModel.catDetailsList[index]),
              ),
            );
          }
        },
      ),
    );
  }
}
