import 'package:cached_network_image/cached_network_image.dart';
import 'package:mobi_kg/const/app_images.dart';
import 'package:mobi_kg/data/models/ads_model.dart';
import 'package:mobi_kg/ui/widget/app_gradient_general.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:shimmer/shimmer.dart';

class PhotoViewPage extends StatelessWidget {
  const PhotoViewPage(
      {Key? key, required this.adsModel, required this.initIndex})
      : super(key: key);
  final AdsModel adsModel;
  final int initIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        flexibleSpace: const AppGradientGeneral(),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: PageView.builder(
            controller: PageController(initialPage: initIndex),
            itemCount: adsModel.images.length,
            itemBuilder: (context, index) {
              return CachedNetworkImage(
                imageUrl: adsModel.images[index],
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.contain,
                imageBuilder: (context, imageProvider) => PhotoView(
                  imageProvider: imageProvider,
                  backgroundDecoration:
                      const BoxDecoration(color: Colors.white),
                  maxScale: 0.9,
                  minScale: 0.2,
                ),
                placeholder: (context, url) => Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(color: Colors.white),
                    )),
                errorWidget: (context, url, error) => Image.asset(
                  AppImages.errorImage,
                  width: double.infinity,
                  height: double.infinity,
                ),
              );
            }),
      ),
    );
  }
}
