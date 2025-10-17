part of 'home_screen.dart';

class HomeView extends StatefulWidget {
  final List<SessionExt> sessions;
  final List<Room> rooms;

  const HomeView({super.key, required this.sessions, required this.rooms});

  @override
  State<HomeView> createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  String? _selectedDate;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    if (widget.sessions.isNotEmpty) {
      _selectedDate = _getUniqueDates().first;
    }
  }

  List<String> _getUniqueDates() {
    final dates = widget.sessions
        .map((s) => s.startsAt!.split('T').first)
        .toSet()
        .toList();
    dates.sort();
    return dates;
  }

  List<SessionExt> _getSessionsForSelectedDate() {
    if (_selectedDate == null) return [];
    return widget.sessions
        .where((session) => session.startsAt!.startsWith(_selectedDate!))
        .toList()
      ..sort((a, b) => a.startsAt!.compareTo(b.startsAt!));
  }

  Map<String, List<SessionExt>> _groupSessionsByTime() {
    final sessions = _getSessionsForSelectedDate();
    final Map<String, List<SessionExt>> grouped = {};

    for (final session in sessions) {
      final timeKey = session.startsAt!.substring(11, 16);
      grouped.putIfAbsent(timeKey, () => []).add(session);
    }

    return grouped;
  }

  @override
  Widget build(BuildContext context) {
    final uniqueDates = _getUniqueDates();
    final groupedSessions = _groupSessionsByTime();
    final timeSlots = groupedSessions.keys.toList()..sort();

    return Column(
      children: [
        _buildDateSelector(uniqueDates),
        Expanded(
          child: ListView.builder(
            controller: _scrollController,
            padding: const EdgeInsets.all(5),
            itemCount: timeSlots.length,
            itemBuilder: (context, index) {
              final time = timeSlots[index];
              final sessions = groupedSessions[time]!;
              return _buildTimeSlot(time, sessions);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildDateSelector(List<String> dates) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: dates.map((date) {
            final isSelected = _selectedDate == date;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: FilterChip(
                label: Text(
                  formatDate(date),
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.grey[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                selected: isSelected,
                onSelected: (selected) {
                  setState(() => _selectedDate = date);
                },
                shadowColor: Colors.black,
                backgroundColor: Theme.of(context).colorScheme.inverseSurface,
                selectedColor: ThemeColors.primary,
                checkmarkColor: Colors.white,
                shape: StadiumBorder(
                  side: BorderSide(
                    color: isSelected
                        ? Colors.transparent
                        : ThemeColors.primary,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildTimeSlot(String time, List<SessionExt> sessions) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTimeIndicator(time),

          const SizedBox(width: 5),

          Expanded(
            child: sessions.length == 1
                ? _buildSingleSessionCard(sessions.first)
                : _buildParallelSessions(sessions),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeIndicator(String time) {
    return Column(
      children: [
        Text(
          time,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: ThemeColors.primary,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 2,
          height: 40,
          color: Theme.of(context).colorScheme.scrim,
        ),
      ],
    );
  }

  Widget _buildSingleSessionCard(SessionExt session) {
    return SessionCard(session: session);
  }

  Widget _buildParallelSessions(List<SessionExt> sessions) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final cardWidth =
            (constraints.maxWidth - 8 * (sessions.length - 1)) /
            sessions.length;

        return Wrap(
          spacing: 2,
          runSpacing: 2,
          children: sessions.map((session) {
            return SizedBox(
              width: cardWidth,
              child: SessionCard(session: session, isCompact: true),
            );
          }).toList(),
        );
      },
    );
  }
}
