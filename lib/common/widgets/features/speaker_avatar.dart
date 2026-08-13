import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/app_assets.dart';
import '../../utils/api_util.dart';
import '../../utils/app_util.dart';

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
    this.fallbackAsset = AppAssets.imgSpeaker,
    this.fallbackWidget,
    this.fit = BoxFit.cover,
    this.backgroundColor,
    this.circular = true,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveImageUrl = getEffectiveImageUrl(imageUrl);
    
    return ExtendedImage.network(
      effectiveImageUrl,
      width: radius * 2,
      height: radius * 2,
      fit: fit,
      cache: true,
      retries: 3,
      timeRetry: const Duration(milliseconds: 500),
      headers: const {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
      },
      shape: circular ? BoxShape.circle : BoxShape.rectangle,
      borderRadius: circular ? null : BorderRadius.circular(8),
      loadStateChanged: (state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            return circular
                ? CircleAvatar(
                    radius: radius,
                    backgroundColor: Colors.grey[300],
                    child: const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
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
                    alignment: Alignment.center,
                    child: const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  );

          case LoadState.completed:
            return circular
                ? CircleAvatar(
                    radius: radius,
                    backgroundImage: state.imageProvider,
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
                        image: state.imageProvider,
                        fit: fit,
                      ),
                      color: backgroundColor,
                    ),
                  );

          case LoadState.failed:
            logger('❌ SpeakerAvatar - Failed to load: $effectiveImageUrl');
            if (state.lastException != null) {
              logger('❌ SpeakerAvatar - Exception: ${state.lastException}');
              logger('❌ SpeakerAvatar - StackTrace: ${state.lastStack}');
            }
            return _buildFallback();
        }
      },
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
                ? Icon(Icons.person, size: radius, color: Colors.grey[600])
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
                  ? DecorationImage(image: AssetImage(fallbackAsset!), fit: fit)
                  : null,
            ),
            child: fallbackAsset == null
                ? Icon(Icons.person, size: radius, color: Colors.grey[600])
                : null,
          );
  }
}
