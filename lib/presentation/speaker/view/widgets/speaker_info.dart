part of '../speaker_screen.dart';

class SpeakerInfo extends StatelessWidget {
  final Speaker speaker;
  final List<Link> links;

  const SpeakerInfo({super.key, required this.speaker, required this.links});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpeakerAvatar(
                  imageUrl: speaker.avatar,
                  radius: 50,
                  circular: false,
                  fallbackAsset: AppAssets.imgSpeaker,
                ),
                // Container(
                //   width: 100,
                //   height: 120,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     image: speaker.avatar != null
                //         ? DecorationImage(
                //             image: speaker.avatar != null
                //                 ? NetworkImage(speaker.avatar!)
                //                 : const AssetImage(AppAssets.imgSpeaker)
                //                       as ImageProvider,
                //             fit: BoxFit.cover,
                //           )
                //         : null,
                //     color: speaker.avatar == null ? Colors.grey[300] : null,
                //   ),
                //   child: speaker.avatar == null
                //       ? const Icon(Icons.person, size: 40, color: Colors.grey)
                //       : null,
                // ),
                const SizedBox(width: 16),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        speaker.fullName ??
                            '${speaker.firstName} ${speaker.lastName}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (speaker.tagLine != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          speaker.tagLine!,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                      if (links.isNotEmpty) ...[_buildSocialIcons()],
                    ],
                  ),
                ),
              ],
            ),
            if (speaker.bio != null && speaker.bio!.isNotEmpty) ...[
              Text(
                speaker.bio!,
                style: const TextStyle(fontSize: 14, height: 1.4),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildSocialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: links.map((link) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: _buildSocialIcon(link),
        );
      }).toList(),
    );
  }

  Widget _buildSocialIcon(Link link) {
    final platform = link.title?.toLowerCase() ?? '';
    final icon = getSocialIcon(platform);
    final color = getSocialColor(platform);

    return IconButton(
      icon: icon,
      iconSize: 24,
      color: color,
      onPressed: () {
        if (link.url != null) {
          launchUrl(Uri.parse(link.url!));
        }
      },
    );
  }
}
