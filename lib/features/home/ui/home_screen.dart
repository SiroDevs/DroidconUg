import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/utils/constants/app_assets.dart';
import '../../../common/utils/date_util.dart';
import '../../../domain/entity/models.dart';
import '../bloc/home_bloc.dart';
import '../../../core/theme/theme_colors.dart';
import '../../../common/widgets/action/theme_button.dart';
import '../../../common/widgets/features/speaker_avatar.dart';
import '../../../common/widgets/progress/custom_snackbar.dart';
import '../../../common/widgets/progress/general_progress.dart';
import '../../../common/widgets/progress/skeleton.dart';
import '../../../common/widgets/action/session_card.dart';
import '../../speaker/ui/speaker_screen.dart';

part 'home_view.dart';
part 'widgets/dates_header.dart';
part 'widgets/speakers_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(const FetchData()),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          state.whenOrNull(
            failure: (feedback) {
              CustomSnackbar.show(
                context,
                'Unable to fetch sessions: $feedback',
              );
            },
          );
        },
        builder: (context, state) {
          var appBar = AppBar(
            title: Image.asset(AppAssets.droidconIcon, height: 40),
            actions: [ThemeButton()],
          );
          Widget buildEmptyState(String message, bool showRetry) {
            return EmptyState(
              title: message,
              showRetry: showRetry,
              onRetry: () => context.read<HomeBloc>().add(const FetchData()),
            );
          }

          return state.when(
            initial: () => Scaffold(
              appBar: appBar,
              body: buildEmptyState("Loading...", false),
            ),
            progress: () => const Scaffold(body: SkeletonLoading()),
            loaded: () => Scaffold(
              appBar: appBar,
              body: buildEmptyState("Loading...", false),
            ),
            success: () => Scaffold(
              appBar: appBar,
              body: buildEmptyState("Success!", true),
            ),
            fetched: (droidcon) {
              return Scaffold(
                appBar: appBar,
                body: HomeView(sessions: droidcon.sessions),
                floatingActionButton: FloatingActionButton(
                  onPressed: () => _showSpeakersBottomSheet(droidcon.speakers),
                  backgroundColor: ThemeColors.primary,
                  foregroundColor: Colors.white,
                  child: Badge(
                    label: Text(droidcon.speakers.length.toString()),
                    child: const Icon(Icons.people_alt_outlined),
                  ),
                ),
              );
            },
            bookmarked: (bookmarked) => Scaffold(
              appBar: appBar,
              body: buildEmptyState("Bookmarked!", true),
            ),
            noInternet: () => Scaffold(
              appBar: appBar,
              body: buildEmptyState(
                "You need an active internet connection to get the sessions",
                true,
              ),
            ),
            failure: (feedback) =>
                Scaffold(appBar: appBar, body: buildEmptyState(feedback, true)),
          );
        },
      ),
    );
  }

  void _showSpeakersBottomSheet(List<Speaker> speakers) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => SpeakersBottomSheet(
        speakers: speakers,
        onSpeakerTap: _handleSpeakerTap,
      ),
    );
  }

  void _handleSpeakerTap(Speaker speaker) {
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SpeakerScreen(speaker: speaker.id!),
      ),
    );
  }
}
