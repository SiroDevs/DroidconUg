part of '../speaker_screen.dart';

class SpeakerHeader extends StatelessWidget {
  final Speaker speaker;

  const SpeakerHeader({super.key, required this.speaker});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [ThemeColors.secondary, ThemeColors.secondaryContainer],
        ),
      ),
      child: Stack(
        children: [
          _buildHeaderImage(),
          Container(color: Colors.black.withValues(alpha: 0.3)),
        ],
      ),
    );
  }

  Widget _buildHeaderImage() {
    final effectiveImageUrl = getEffectiveImageUrl(speaker.avatar);
    
    return ExtendedImage.network(
      effectiveImageUrl,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
      cache: true,
      handleLoadingProgress: true,
      mode: ExtendedImageMode.none,
      loadStateChanged: (state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            return _buildLoadingHeader();

          case LoadState.completed:
            return AnimatedOpacity(
              opacity: 1.0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
              child: ExtendedRawImage(
                image: state.extendedImageInfo?.image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            );

          case LoadState.failed:
            return _buildFallbackHeader();
        }
      },
    );
  }

  Widget _buildLoadingHeader() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.grey[300]!, Colors.grey[400]!],
        ),
      ),
      child: const Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(ThemeColors.primary),
        ),
      ),
    );
  }

  Widget _buildFallbackHeader() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.imgSpeaker),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person,
              size: 60,
              color: Colors.white.withValues(alpha: 0.8),
            ),
            const SizedBox(height: 8),
            Text(
              speaker.fullName ?? '${speaker.firstName} ${speaker.lastName}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
