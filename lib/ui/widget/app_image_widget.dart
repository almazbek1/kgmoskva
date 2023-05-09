import 'package:cached_network_image/cached_network_image.dart';
import 'package:mobi_kg/const/app_images.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppImageWidget extends StatelessWidget {
  const AppImageWidget(
      {Key? key,
      required this.imagePath,
      this.width = double.infinity,
      this.height = double.infinity,
      this.radiusBottomRight = 0,
      this.radiusBottomLeft = 0,
      this.radiusTopLeft = 0,
      this.radiusTopRight = 0,
      this.tag,
      this.onTap})
      : super(key: key);
  final String imagePath;
  final String? tag;
  final double width;
  final double height;
  final double radiusBottomRight;
  final double radiusBottomLeft;
  final double radiusTopLeft;
  final double radiusTopRight;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Hero(
        tag: tag ?? imagePath,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(radiusTopRight),
            topLeft: Radius.circular(radiusTopLeft),
            bottomLeft: Radius.circular(radiusBottomLeft),
            bottomRight: Radius.circular(radiusBottomRight),
          ),
          child: CachedNetworkImage(
            imageUrl: imagePath,
            height: height,
            width: width,
            fit: BoxFit.cover,
            placeholder: (context, url) => Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(radiusBottomRight),
                          bottomLeft: Radius.circular(radiusBottomLeft),
                          topLeft: Radius.circular(radiusTopLeft),
                          topRight: Radius.circular(radiusTopRight)),
                      color: Colors.white),
                )),
            errorWidget: (context, url, error) => Image.asset(
                AppImages.errorImage,
                width: width,
                height: height,
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
