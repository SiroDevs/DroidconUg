import 'dart:math';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/utils/date_util.dart';
import '../../../data/models/models.dart';
import '../../widgets/progress/general_progress.dart';
import '../../widgets/progress/custom_snackbar.dart';
import '../../widgets/progress/skeleton.dart';
import '../../navigator/route_names.dart';
import '../../theme/theme_colors.dart';
import '../../theme/theme_styles.dart';
import '../../blocs/home/home_bloc.dart';

part 'widgets/sessions_preview.dart';
part 'widgets/speakers_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<Bookmark> bookmarks = [];
  List<Room> rooms = [];
  List<Speaker> speakers = [];
  List<Session> sessions = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(const FetchData()),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          state.whenOrNull(
            failure: (feedback) {
              CustomSnackbar.show(context, 'Unable to fetch sessions: $feedback');
            },
          );
        },
        builder: (context, state) {
          var appBar = AppBar(
            title: GestureDetector(
              child: Image.asset(AppAssets.droidconIcon, height: 50),
              onTap: () => Navigator.pushNamed(context, RouteNames.settings),
            ),
          );

          return state.when(
            initial: () => Scaffold(appBar: appBar, body: _buildEmptyState("Loading...", false)),
            progress: () => const Scaffold(body: SkeletonLoading()),
            loaded: () => Scaffold(appBar: appBar, body: _buildEmptyState("Loading...", false)),
            success: () => Scaffold(appBar: appBar, body: _buildEmptyState("Success!", true)),
            fetched: (bookmarks, rooms, speakers, sessions) {
              this.bookmarks = bookmarks;
              this.rooms = rooms;
              this.speakers = speakers;
              this.sessions = sessions;
              
              return Scaffold(
                appBar: appBar,
                body: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SpeakersCarousel(parent: this),
                      SessionsPreview(parent: this),
                    ],
                  ),
                ),
              );
            },
            bookmarked: (bookmarked) => Scaffold(appBar: appBar, body: _buildEmptyState("Bookmarked!", true)),
            noInternet: () => Scaffold(
              appBar: appBar, 
              body: _buildEmptyState(
                "No internet connection. Showing cached data if available.",
                true
              )
            ),
            failure: (feedback) => Scaffold(
              appBar: appBar, 
              body: _buildEmptyState(feedback, true)
            ),
          );
        },
      ),
    );
  }

  Widget _buildEmptyState(String message, bool showRetry) {
    return EmptyState(
      title: message,
      showRetry: showRetry,
      onRetry: () => context.read<HomeBloc>().add(const FetchData()),
    );
  }
}