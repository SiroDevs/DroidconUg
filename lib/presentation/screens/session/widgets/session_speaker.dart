part of '../session_screen.dart';

class SessionSpeaker extends StatelessWidget {
  final Speaker speaker;

  const SessionSpeaker({super.key, required this.speaker});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Speaker',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                // Avatar
                CircleAvatar(
                  radius: 30,
                  backgroundImage: speaker.avatar != null 
                      ? NetworkImage(speaker.avatar!) 
                      : null,
                  child: speaker.avatar == null 
                      ? const Icon(Icons.person, size: 30)
                      : null,
                ),
                const SizedBox(width: 16),
                // Speaker details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        speaker.fullName ?? '${speaker.firstName} ${speaker.lastName}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      if (speaker.tagLine != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          speaker.tagLine!,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}