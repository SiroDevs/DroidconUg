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
          colors: [
            ThemeColors.primary.withValues(alpha: 0.8),
            ThemeColors.primary.withValues(alpha: 0.6),
          ],
        ),
      ),
      child: Stack(
        children: [
          if (speaker.avatar != null)
            Image.network(
              speaker.avatar!,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          Container(
            color: Colors.black.withValues(alpha: 0.3),
          ),
        ],
      ),
    );
  }
}