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
    if (speaker.avatar == null || speaker.avatar!.isEmpty) {
      return _buildFallbackHeader();
    }

    return CachedNetworkImage(
      imageUrl: speaker.avatar!,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
      placeholder: (context, url) => _buildLoadingHeader(),
      errorWidget: (context, url, error) => _buildFallbackHeader(),
      fadeInDuration: const Duration(milliseconds: 500),
      fadeInCurve: Curves.easeIn,
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
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage(AppAssets.imgSpeaker) as ImageProvider,
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
