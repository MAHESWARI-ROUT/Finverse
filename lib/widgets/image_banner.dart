import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  const ImageBanner(
      {super.key,
      this.onPressed,
      required this.imageurl,
      this.isNetworkimage = false,
      this.applyImageRadius = true,
      this.height = 60,
      this.width = double.infinity,
      this.isalign = false,
      this.radius=20,this.fit = BoxFit.contain});
  final VoidCallback? onPressed;
  final String imageurl;
  final bool? applyImageRadius;
  final bool? isNetworkimage;
  final double? height, width;
  final bool? isalign;
  final double? radius;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: isalign! ? Alignment.center : null,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: ClipRRect(
          borderRadius:
              applyImageRadius! ? BorderRadius.circular(radius!) : BorderRadius.zero,
          child: SizedBox(
            height: height,
            width: width,
            child: Image(
              height: height,
              width: width,
              fit: fit,
              image: isNetworkimage!
                  ? NetworkImage(imageurl)
                  : AssetImage(imageurl) as ImageProvider,
            ),
          ),
        ),
      ),
    );
  }
}
