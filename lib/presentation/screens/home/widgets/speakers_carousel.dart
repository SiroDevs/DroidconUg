part of '../home_screen.dart';

class SpeakersCarousel extends StatelessWidget {
  final List<Speaker> speakers;

  const SpeakersCarousel({this.speakers = const [], super.key});

  @override
  Widget build(BuildContext context) {
    final randomSpeakers = List.from(speakers)..shuffle(Random());
    final displayedSpeakers = randomSpeakers.take(5).toList();
    var widgetTitle = Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              'OUR SPEAKERS ... ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ).expanded(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 14),
              backgroundColor: Theme.of(context).colorScheme.inverseSurface,
            ),
            onPressed: () {
              Navigator.pushNamed(context, RouteNames.speakers);
            },
            child: const Text('View All'),
          ),
        ],
      ),
    );

    var speakersWidget = Container(
      height: MediaQuery.of(context).size.height / 2.5,
      padding: const EdgeInsets.all(Sizes.sm),
      child: Swiper(
        itemBuilder: (context, index) =>
            _SpeakerCard(speaker: displayedSpeakers[index]),
        indicatorLayout: PageIndicatorLayout.COLOR,
        autoplay: true,
        itemCount: displayedSpeakers.length,
        pagination: const SwiperPagination(),
        control: const SwiperControl(),
      ),
    );

    return Column(children: [widgetTitle, speakersWidget]);
  }
}

class _SpeakerCard extends StatelessWidget {
  final Speaker speaker;

  const _SpeakerCard({required this.speaker});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.sm),
      ),
      child: Stack(
        children: [
          _SpeakerImage(profilePicUrl: speaker.avatar),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black.withValues(alpha: 0.5),
            ),
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height / 2.5) / 2,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _SpeakerInfo(speaker: speaker),
            ),
          ),
        ],
      ),
    );
  }
}

class _SpeakerImage extends StatelessWidget {
  final String? profilePicUrl;

  const _SpeakerImage({required this.profilePicUrl});

  @override
  Widget build(BuildContext context) {
    var defaultPic = Image.asset(AppAssets.imgSpeaker, fit: BoxFit.cover);
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: profilePicUrl != null
          ? Image.network(
              profilePicUrl!,
              fit: BoxFit.cover,
              width: double.infinity,
              errorBuilder: (context, error, stackTrace) => defaultPic,
            )
          : defaultPic,
    );
  }
}

class _SpeakerInfo extends StatelessWidget {
  final Speaker speaker;

  const _SpeakerInfo({required this.speaker});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${speaker.firstName ?? ''} ${speaker.lastName ?? ''}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            speaker.tagLine ?? '',
            maxLines: 2,
            style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
