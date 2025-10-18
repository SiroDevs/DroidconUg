import 'dart:math';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/utils/date_util.dart';
import '../../../domain/entity/models.dart';
import '../../blocs/home/home_bloc.dart';
import '../../navigator/route_names.dart';
import '../../theme/theme_colors.dart';
import '../../theme/theme_styles.dart';
import '../../widgets/action/theme_button.dart';
import '../../widgets/progress/custom_snackbar.dart';
import '../../widgets/progress/general_progress.dart';
import '../../widgets/progress/skeleton.dart';

part 'home_view.dart';
part 'widgets/dates_header.dart';
part 'widgets/session_card.dart';
part 'widgets/speakers_bottom_sheet.dart';
part 'widgets/speakers_carousel.dart';
part 'widgets/sessions_preview.dart';

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
                body: HomeView(
                  sessions: droidcon.sessions,
                  rooms: droidcon.rooms,
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () => _showSpeakersBottomSheet(droidcon.speakers),
                  backgroundColor: ThemeColors.primary,
                  foregroundColor: Colors.white,
                  child: Badge(
                    label: Text(
                      droidcon.speakers.length.toString(),
                    ),
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
  }
}
