import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/utils/api_util.dart';
import '../../../domain/entity/models.dart';
import '../bloc/speakers_bloc.dart';
import '../../../core/theme/theme_colors.dart';
import '../../widgets/action/session_card.dart';
import '../../widgets/features/date_header.dart';
import '../../widgets/features/speaker_avatar.dart';
import '../../widgets/progress/custom_snackbar.dart';
import '../../widgets/progress/general_progress.dart';

part 'speaker_view.dart';
part 'widgets/speaker_header.dart';
part 'widgets/speaker_info.dart';
part 'widgets/speaker_links.dart';

class SpeakerScreen extends StatefulWidget {
  final String speaker;

  const SpeakerScreen({super.key, required this.speaker});

  @override
  State<SpeakerScreen> createState() => SessionScreenState();
}

class SessionScreenState extends State<SpeakerScreen> {
  final ScrollController _scrollController = ScrollController();

  void _toggleBookmark() {
    // context.read<SessionsBloc>().add(BookmarkSession(_currentSession));
  }

  void _shareSession() {
    // final shareText = 'Check out "${_currentSession.title}" by ${_currentSession.fullName}';
    // Share.share(shareText);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SpeakersBloc()..add(FetchData(widget.speaker)),
      child: BlocConsumer<SpeakersBloc, SpeakersState>(
        listener: (context, state) {
          state.whenOrNull(
            failure: (message) {
              CustomSnackbar.show(context, 'Error: $message');
            },
            bookmarked: (isBookmarked) {
              CustomSnackbar.show(
                context,
                isBookmarked ? 'Speaker bookmarked' : 'Speaker removed',
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            progress: () => const Scaffold(body: CircularProgress()),
            fetched: (speaker, sessions, allSessions, links) => Scaffold(
              body: SpeakerView(
                speaker: speaker,
                sessions: sessions,
                allSessions: allSessions,
                scrollController: _scrollController,
                onToggleBookmark: _toggleBookmark,
                links: links,
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: _shareSession,
                backgroundColor: ThemeColors.primary,
                foregroundColor: Colors.white,
                child: const Icon(Icons.share),
              ),
            ),
            orElse: () => Scaffold(
              appBar: AppBar(title: Text('Droidcon Ug')),
              body: EmptyState(
                title:
                    "Ooops! It appears like some data for this speaker is not available at the moment.",
                showRetry: false,
              ),
            ),
          );
        },
      ),
    );
  }
}
