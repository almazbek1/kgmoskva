import 'package:mobi_kg/data/models/ads_model.dart';

abstract class HomeEvent{}
class HomeGetAllEvent extends HomeEvent{}
class HomeGetOfCategoryEvent extends HomeEvent{
  final String category;
  HomeGetOfCategoryEvent({required this.category});
}

class HomeUpdateAds extends HomeEvent{
  final AdsModel adsModel;
  HomeUpdateAds({required this.adsModel});
}