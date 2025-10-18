part of '../home_screen.dart';

class SpeakersBottomSheet extends StatelessWidget {
  final List<Speaker> speakers;
  final Function(Speaker) onSpeakerTap;

  const SpeakersBottomSheet({super.key, 
    required this.speakers,
    required this.onSpeakerTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inverseSurface,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey[300]!,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: [
                Text(
                  '${speakers.length} Speakers',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search speakers...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: (value) {
                //To do Implement search functionality
              },
            ),
          ),
          
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: speakers.length,
              itemBuilder: (context, index) {
                final speaker = speakers[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: speaker.avatar != null 
                        ? NetworkImage(speaker.avatar!) 
                        : null,
                    child: speaker.avatar == null 
                        ? const Icon(Icons.person)
                        : null,
                  ),
                  title: Text(
                    '${speaker.firstName} ${speaker.lastName}',
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: speaker.tagLine != null 
                      ? Text(speaker.tagLine!, style: TextStyle(fontSize: 14),)
                      : null,
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () => onSpeakerTap(speaker),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

