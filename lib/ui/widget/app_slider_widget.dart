import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:mobi_kg/bloc/homeBloc/home_bloc.dart';
import 'package:mobi_kg/bloc/homeBloc/home_event.dart';
import 'package:mobi_kg/const/app_colors.dart';
import 'package:mobi_kg/const/app_const.dart';
import 'package:mobi_kg/const/app_images.dart';
import 'package:mobi_kg/data/models/ads_model.dart';
import 'package:mobi_kg/data/repository/auth_repo.dart';
import 'package:mobi_kg/ui/pages/ads_info_page.dart';
import 'package:shimmer/shimmer.dart';

class AppSliderWidget extends StatefulWidget {
  const AppSliderWidget({super.key, required this.list});
  final List<AdsModel> list;

  @override
  State<AppSliderWidget> createState() => _AppSliderWidgetState();
}

class _AppSliderWidgetState extends State<AppSliderWidget> {
  late BuildContext mContext;
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    const ScrollPhysics physics = BouncingScrollPhysics();
    final ScrollPhysics mergedPhysics =
        physics.applyTo(const AlwaysScrollableScrollPhysics());
    return widget.list.isEmpty
        ? const SizedBox()
        : Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: double.infinity,
                height: 200,
                child: PageView.builder(
                    controller:
                        PageController(viewportFraction: 1, initialPage: 0),
                    physics: mergedPhysics,
                    padEnds: false,
                    onPageChanged: (val) {
                      _index = val;
                      (mContext as Element).markNeedsBuild();
                    },
                    itemCount: widget.list.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: index == 0 ? 5 : 0,
                            right: index == widget.list.length ? 5 : 0),
                        child: AppSliderItem(
                          model: widget.list[index],
                        ),
                      );
                    }),
              ),
              Builder(builder: (context) {
                mContext = context;
                return SizedBox(
                  height: 10,
                  child: Center(
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.list.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 1.0),
                            child: Icon(
                              Icons.lens,
                              color: _index == index
                                  ? AppColors.green.withOpacity(0.66)
                                  : Colors.grey,
                              size: _index == index ? 12 : 8,
                            ),
                          );
                        }),
                  ),
                );
              })
            ],
          );
  }
}

class AppSliderItem extends StatelessWidget {
  const AppSliderItem({
    super.key,
    required this.model,
  });
  final AdsModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        final user = RepositoryProvider.of<AuthRepo>(context).getUser();
        if (user != null && user.root == AppConst.rootAdminFirst) {
          buildShowDialog(context);
        }
      },
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 500),
                reverseTransitionDuration: const Duration(milliseconds: 500),
                pageBuilder: (context, animation, secondaryAnimation) =>
                    FadeTransition(
                      opacity: animation,
                      child: AdsInfoPage(
                        adsModel: model,
                        tag: model.images[0] + '2105',
                      ),
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7.73),
                child: Hero(
                  tag: model.images[0] + '2105',
                  child: CachedNetworkImage(
                    imageUrl: model.images[0],
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: Container(
                          decoration: const BoxDecoration(color: Colors.white),
                        )),
                    errorWidget: (context, url, error) =>
                        Image.asset(AppImages.errorImage, fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(7.73)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        model.title ?? '',
                        style: const TextStyle(color: Colors.white),
                        textAlign: TextAlign.left,
                        maxLines: 2,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                          model.price != ''
                              ? '${model.price!} р'
                              : 'treaty'.tr,
                          style: const TextStyle(
                              color: AppColors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                          textAlign: TextAlign.left),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> buildShowDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Добавить в баннер'),
            content: SizedBox(
                // Change as per your requirement
                width: 300.0,
                // Change as per your requirement
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Показать в баннере"),
                    Switch(
                      // This bool value toggles the switch.
                      value: model.banner,
                      activeColor: Colors.red,
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        final data = model;
                        data.banner = value;
                        BlocProvider.of<HomeBloc>(context)
                            .add(HomeUpdateAds(adsModel: data));
                        (context as Element).markNeedsBuild();
                      },
                    ),
                  ],
                )),
          );
        });
  }
}
