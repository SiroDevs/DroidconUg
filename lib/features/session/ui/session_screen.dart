import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../common/utils/constants/app_assets.dart';
import '../../../common/utils/date_util.dart';
import '../../../domain/entity/models.dart';
import '../bloc/sessions_bloc.dart';
import '../../../core/theme/theme_colors.dart';
import '../../../common/widgets/action/session_card.dart';
import '../../../common/widgets/features/speaker_avatar.dart';
import '../../../common/widgets/progress/custom_snackbar.dart';
import '../../../common/widgets/progress/general_progress.dart';
import '../../speaker/ui/speaker_screen.dart';

part 'session_view.dart';
part 'widgets/parallel_sessions.dart';
part 'widgets/room_schedule.dart';
part 'widgets/session_info.dart';
part 'widgets/session_meta.dart';
part 'widgets/session_speaker.dart';

class SessionScreen extends StatefulWidget {
  final List<SessionExt> sessions;
  final SessionExt session;

  const SessionScreen({
    super.key,
    required this.sessions,
    required this.session,
  });

  @override
  State<SessionScreen> createState() => SessionScreenState();
}

class SessionScreenState extends State<SessionScreen> {
  late SessionExt _currentSession;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _currentSession = widget.session;

    // Fetch speaker data when screen loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_currentSession.speakerId != null) {
        context.read<SessionsBloc>().add(FetchData(_currentSession));
      }
    });
  }

  void _updateSession(SessionExt newSession) {
    setState(() {
      _currentSession = newSession;
    });

    // Fetch speaker for the new session
    if (newSession.speakerId != null) {
      context.read<SessionsBloc>().add(FetchData(newSession));
    }

    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _toggleBookmark() {
    // context.read<SessionsBloc>().add(BookmarkSession(_currentSession));
  }

  void _shareSession() {
    // final shareText = 'Check out "${_currentSession.title}" by ${_currentSession.fullName}';
    // Share.share(shareText);
  }

  List<SessionExt> _getRoomSessions() {
    return widget.sessions
        .where((s) => s.roomId == _currentSession.roomId)
        .toList()
      ..sort((a, b) => a.startsAt!.compareTo(b.startsAt!));
  }

  List<SessionExt> _getParallelSessions() {
    return widget.sessions
        .where(
          (s) =>
              s.startsAt == _currentSession.startsAt &&
              s.sessionId != _currentSession.sessionId,
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final roomSessions = _getRoomSessions();
    final parallelSessions = _getParallelSessions();

    return BlocProvider(
      create: (context) => SessionsBloc()..add(FetchData(_currentSession)),
      child: BlocConsumer<SessionsBloc, SessionsState>(
        listener: (context, state) {
          state.whenOrNull(
            failure: (message) {
              CustomSnackbar.show(context, 'Error: $message');
            },
            bookmarked: (isBookmarked) {
              setState(() {
                _currentSession.bookmarked = isBookmarked;
              });

              CustomSnackbar.show(
                context,
                isBookmarked ? 'Session bookmarked' : 'Session removed',
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            progress: () => const Scaffold(body: CircularProgress()),
            fetched: (session, speaker) => Scaffold(
              body: SessionView(
                currentSession: _currentSession,
                roomSessions: roomSessions,
                parallelSessions: parallelSessions,
                scrollController: _scrollController,
                onSessionTap: _updateSession,
                onToggleBookmark: _toggleBookmark,
                sessionData: session,
                speakerData: speaker,
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: _shareSession,
                backgroundColor: ThemeColors.primary,
                foregroundColor: Colors.white,
                child: const Icon(Icons.share),
              ),
            ),
            orElse: () => Scaffold(
              appBar: AppBar(title: Text(_currentSession.title!)),
              body: EmptyState(
                title:
                    "Ooops! It appears like some data for this session is not available at the moment.",
                showRetry: false,
              ),
            ),
          );
        },
      ),
    );
  }
}
