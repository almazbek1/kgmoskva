import 'package:mobi_kg/bloc/homeBloc/home_event.dart';
import 'package:mobi_kg/bloc/homeBloc/home_state.dart';
import 'package:mobi_kg/const/app_const.dart';
import 'package:mobi_kg/data/models/ads_model.dart';
import 'package:mobi_kg/data/repository/data_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final Repo dataRepo;
  List<AdsModel>? banners;
  HomeBloc({required this.dataRepo}) : super(HomeInitialState()) {
    on<HomeGetAllEvent>((event, emit) async {
      emit(HomeLoadingState());
      final result = await dataRepo.getAllAds();
      banners = [];
      for (var data in result ?? <AdsModel>[]) {
        if (data.banner) {
          banners?.add(data);
        }
      }
      getResult(emit, result);
    });
    on<HomeGetOfCategoryEvent>((event, emit) async {
      emit(HomeLoadingState());
      if (event.category == AppConst.cotegory[0]) {
        final result = await dataRepo.getAllAds();
        banners = [];
        for (var data in result ?? <AdsModel>[]) {
          if (data.banner) {
            banners?.add(data);
          }
        }
        getResult(emit, result);
      } else {
        final result = await dataRepo.getCategory(event.category);
        getResult(emit, result);
      }
    });

    on<HomeUpdateAds>((event, emit) async {
      emit(HomeLoadingState());
      await dataRepo.updateAds(adsModel: event.adsModel);
      final result = await dataRepo.getAllAds();
      banners = [];
      for (var data in result ?? <AdsModel>[]) {
        if (data.banner) {
          banners?.add(data);
        }
      }
      getResult(emit, result);
    });
  }
  getResult(Emitter<HomeState> emit, List<AdsModel>? result) {
    if (result != null) {
      if (result.isNotEmpty) {
        emit(HomeLoadedState(list: result));
      } else {
        emit(HomeEmptyState());
      }
    } else {
      emit(HomeErrorState());
    }
  }
}
