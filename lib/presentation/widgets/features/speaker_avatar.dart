import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../core/constants/app_assets.dart';

class SpeakerAvatar extends StatelessWidget {
  final String? imageUrl;
  final double radius;
  final String? fallbackAsset;
  final Widget? fallbackWidget;
  final BoxFit fit;
  final Color? backgroundColor;
  final bool circular;

  const SpeakerAvatar({
    super.key,
    this.imageUrl,
    this.radius = 20,
    this.fallbackAsset= AppAssets.imgSpeaker,
    this.fallbackWidget,
    this.fit = BoxFit.cover,
    this.backgroundColor,
    this.circular = true,
  });

  @override
  Widget build(BuildContext context) {
    final fallback = _buildFallback();
    
    if (imageUrl == null || imageUrl!.isEmpty) {
      return fallback;
    }

    return CachedNetworkImage(
      imageUrl: imageUrl!,
      imageBuilder: (context, imageProvider) => circular
          ? CircleAvatar(
              radius: radius,
              backgroundImage: imageProvider,
              backgroundColor: backgroundColor,
            )
          : Container(
              width: radius * 2,
              height: radius * 2,
              decoration: BoxDecoration(
                borderRadius: circular 
                    ? BorderRadius.circular(radius) 
                    : BorderRadius.circular(8),
                image: DecorationImage(
                  image: imageProvider,
                  fit: fit,
                ),
                color: backgroundColor,
              ),
            ),
      placeholder: (context, url) => circular
          ? CircleAvatar(
              radius: radius,
              backgroundColor: Colors.grey[300],
              child: const CircularProgressIndicator(strokeWidth: 2),
            )
          : Container(
              width: radius * 2,
              height: radius * 2,
              decoration: BoxDecoration(
                borderRadius: circular 
                    ? BorderRadius.circular(radius) 
                    : BorderRadius.circular(8),
                color: Colors.grey[300],
              ),
              child: const CircularProgressIndicator(strokeWidth: 2),
            ),
      errorWidget: (context, url, error) => fallback,
    );
  }

  Widget _buildFallback() {
    if (fallbackWidget != null) {
      return fallbackWidget!;
    }

    return circular
        ? CircleAvatar(
            radius: radius,
            backgroundColor: backgroundColor ?? Colors.grey[300],
            backgroundImage: fallbackAsset != null
                ? AssetImage(fallbackAsset!)
                : null,
            child: fallbackAsset == null
                ? Icon(
                    Icons.person,
                    size: radius,
                    color: Colors.grey[600],
                  )
                : null,
          )
        : Container(
            width: radius * 2,
            height: radius * 2,
            decoration: BoxDecoration(
              borderRadius: circular 
                  ? BorderRadius.circular(radius) 
                  : BorderRadius.circular(8),
              color: backgroundColor ?? Colors.grey[300],
              image: fallbackAsset != null
                  ? DecorationImage(
                      image: AssetImage(fallbackAsset!),
                      fit: fit,
                    )
                  : null,
            ),
            child: fallbackAsset == null
                ? Icon(
                    Icons.person,
                    size: radius,
                    color: Colors.grey[600],
                  )
                : null,
          );
  }
}