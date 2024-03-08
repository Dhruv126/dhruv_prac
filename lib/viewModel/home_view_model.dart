import 'package:dhruv_prac/core/services/di/services_module.dart';
import 'package:dhruv_prac/core/services/loading_overlay_service.dart';
import 'package:dhruv_prac/core/services/navigation_service.dart';
import 'package:dhruv_prac/core/services/route_service.dart';
import 'package:dhruv_prac/model/cat_details_model.dart';
import 'package:dhruv_prac/repo/home_repo.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier{
  final _loadingOverlay = locator<LoadingOverlayService>();
  final _navigationService = locator<NavigationService>();
  List<CatDetailsModel> catDetailsList = [];


  Future<void> getCatDetails() async {
    _loadingOverlay.show();
    try {
      catDetailsList = await HomeRepo.catDetailsRepo();
    } catch (e) {
      debugPrint("Error ======= > $e");
    } finally {
      _loadingOverlay.hide();
    }
    notifyListeners();
  }

  void navigateToCatDetailsScreen(CatDetailsModel catDetailsModel){
    _navigationService.navigateTo(AppRoutes.catDetailScreen,arguments: [catDetailsModel]);
  }

}