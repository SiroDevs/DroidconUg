import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entity/models.dart';
import '../../blocs/speakers/speakers_bloc.dart';
import '../../widgets/progress/custom_snackbar.dart';
import '../../widgets/progress/general_progress.dart';
import '../../widgets/progress/skeleton.dart';
import 'speaker_screen.dart';

part 'widgets/speakers_card.dart';

class SpeakersScreen extends StatefulWidget {
  const SpeakersScreen({super.key});

  @override
  State<SpeakersScreen> createState() => SpeakersScreenState();
}

class SpeakersScreenState extends State<SpeakersScreen>
    with SingleTickerProviderStateMixin {
  List<Bookmark> bookmarks = [];
  List<Room> rooms = [];
  List<Speaker> speakers = [];
  List<Session> sessions = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SpeakersBloc()..add(const FetchData()),
      child: BlocConsumer<SpeakersBloc, SpeakersState>(
        listener: (context, state) {
          state.whenOrNull(
            failure: (feedback) {
              CustomSnackbar.show(context, 'Unable to fetch data: $feedback');
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => Scaffold(
              appBar: AppBar(title: const Text('Speakers')),
              body: EmptyState(
                title: 'Sorry, something went wrong.',
                showRetry: true,
                onRetry: () =>
                    context.read<SpeakersBloc>().add(const FetchData()),
              ),
            ),
            progress: () => Scaffold(
              appBar: AppBar(title: const Text('Speakers')),
              body: const SkeletonLoading(),
            ),
            failure: (feedback) => Scaffold(
              appBar: AppBar(title: const Text('Speakers')),
              body: EmptyState(
                title: 'Sorry, something went wrong.',
                showRetry: true,
                onRetry: () =>
                    context.read<SpeakersBloc>().add(const FetchData()),
              ),
            ),
            fetched: (droidcon) {
              if (rooms.isEmpty) {
                return Scaffold(
                  appBar: AppBar(title: const Text('Speakers')),
                  body: const EmptyState(
                    title: 'No speakers available.',
                    showRetry: false,
                  ),
                );
              }

              return Scaffold(
                appBar: AppBar(title: const Text('Speakers')),
                body: GridView.builder(
                  itemCount: speakers.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    final speaker = speakers[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SpeakerScreen(
                              speaker: speaker,
                              sessions: sessions,
                              rooms: rooms,
                            ),
                          ),
                        );
                      },
                      child: SpeakerCard(speaker: speaker),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
