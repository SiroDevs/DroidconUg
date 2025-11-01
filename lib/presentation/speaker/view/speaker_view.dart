part of 'speaker_screen.dart';

class SpeakerView extends StatelessWidget {
  final Speaker speaker;
  final List<SessionExt> sessions;
  final List<SessionExt> allSessions;
  final List<Link> links;
  final ScrollController scrollController;
  final VoidCallback onToggleBookmark;

  const SpeakerView({
    super.key,
    required this.speaker,
    required this.sessions,
    required this.allSessions,
    required this.links,
    required this.scrollController,
    required this.onToggleBookmark,
  });

  @override
  Widget build(BuildContext context) {
    final sessionsByDate = _groupSessionsByDate();

    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverAppBar(
          expandedHeight: 200,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              speaker.fullName ?? '${speaker.firstName} ${speaker.lastName}',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            background: SpeakerHeader(speaker: speaker),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.bookmark, color: Colors.white),
              onPressed: onToggleBookmark,
            ),
          ],
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SpeakerInfo(speaker: speaker, links: links),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),

        if (sessionsByDate.isNotEmpty) ..._buildSessionsByDate(sessionsByDate),

        const SliverToBoxAdapter(child: SizedBox(height: 20)),
      ],
    );
  }

  Map<String, List<SessionExt>> _groupSessionsByDate() {
    final Map<String, List<SessionExt>> grouped = {};

    for (final session in sessions) {
      if (session.startsAt != null) {
        final date = session.startsAt!.split('T').first;
        grouped.putIfAbsent(date, () => []).add(session);
      }
    }

    grouped.forEach((date, sessionList) {
      sessionList.sort((a, b) => a.startsAt!.compareTo(b.startsAt!));
    });

    final sortedDates = grouped.keys.toList()..sort();
    final sortedMap = <String, List<SessionExt>>{};
    for (final date in sortedDates) {
      sortedMap[date] = grouped[date]!;
    }

    return sortedMap;
  }

  List<Widget> _buildSessionsByDate(
    Map<String, List<SessionExt>> sessionsByDate,
  ) {
    final widgets = <Widget>[];

    sessionsByDate.forEach((date, sessions) {
      final dayNumber = sessionsByDate.keys.toList().indexOf(date) + 1;

      widgets.addAll([
        SliverToBoxAdapter(
          child: DateHeader(date: date, dayNumber: dayNumber),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            final session = sessions[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: SessionCard(
                session: session,
                sessions: allSessions,
                showSpeaker: false,
              ),
            );
          }, childCount: sessions.length),
        ),

        const SliverToBoxAdapter(child: SizedBox(height: 10)),
      ]);
    });

    return widgets;
  }
}
