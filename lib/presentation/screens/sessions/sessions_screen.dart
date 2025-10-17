import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/date_util.dart';
import '../../../domain/entity/droidcon.dart';
import '../../../domain/entity/models.dart';
import '../../widgets/features/session_item.dart';
import '../../widgets/progress/custom_snackbar.dart';
import '../../widgets/progress/general_progress.dart';
import '../../widgets/progress/skeleton.dart';
import '../../blocs/sessions/sessions_bloc.dart';
import '../../../core/utils/utils.dart';
import 'session_screen.dart';

class SessionsScreen extends StatefulWidget {
  const SessionsScreen({super.key});

  @override
  State<SessionsScreen> createState() => SessionsScreenState();
}

class SessionsScreenState extends State<SessionsScreen>
    with SingleTickerProviderStateMixin {
  late Droidcon droidcon;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
    // return BlocProvider(
    //   create: (context) => SessionsBloc()..add(const FetchData()),
    //   child: BlocConsumer<SessionsBloc, SessionsState>(
    //     listener: (context, state) {
    //       state.whenOrNull(
    //         failure: (feedback) {
    //           CustomSnackbar.show(
    //             context,
    //             'Unable to fetch data: $feedback',
    //           );
    //         },
    //       );
    //     },
    //     builder: (context, state) {
    //       return state.maybeWhen(
    //         orElse: () => Scaffold(
    //           appBar: AppBar(title: const Text('Sessions')),
    //           body: EmptyState(
    //             title: 'Sorry, something went wrong.',
    //             showRetry: true,
    //             onRetry: () =>
    //                 context.read<SessionsBloc>().add(const FetchData()),
    //           ),
    //         ),
    //         progress: () => Scaffold(
    //           appBar: AppBar(title: const Text('Sessions')),
    //           body: const SkeletonLoading(),
    //         ),
    //         failure: (feedback) => Scaffold(
    //           appBar: AppBar(title: const Text('Sessions')),
    //           body: EmptyState(
    //             title: feedback,
    //             showRetry: true,
    //             onRetry: () =>
    //                 context.read<SessionsBloc>().add(const FetchData()),
    //           ),
    //         ),
    //         fetched: (droidcon) {
    //           if (droidcon.rooms.isEmpty) {
    //             return Scaffold(
    //               appBar: AppBar(title: const Text('Sessions')),
    //               body: const EmptyState(
    //                 title: 'No rooms available.',
    //                 showRetry: false,
    //               ),
    //             );
    //           }

    //           Map<String, List<Session>> groupedSessions = {};
    //           for (var session in droidcon.sessions) {
    //             final startDate = session.startsAt?.substring(0, 10);
    //             if (startDate != null) {
    //               if (!groupedSessions.containsKey(startDate)) {
    //                 groupedSessions[startDate] = [];
    //               }
    //               groupedSessions[startDate]?.add(session);
    //             }
    //           }
    //           List<String> dates = groupedSessions.keys.toList();

    //           return DefaultTabController(
    //             length: dates.length,
    //             child: Scaffold(
    //               appBar: AppBar(
    //                 title: const Text('Sessions'),
    //                 bottom: TabBar(
    //                   tabs: dates.map((date) {
    //                     return Tab(
    //                       child: Column(
    //                         children: [
    //                           Text(
    //                             'Day ${getDayNumber(date, droidcon.sessions)}',
    //                             style: const TextStyle(
    //                               fontWeight: FontWeight.bold,
    //                               fontSize: 16,
    //                             ),
    //                           ),
    //                           Text(
    //                             formatDateTab(date),
    //                             style: const TextStyle(
    //                               fontSize: 14,
    //                               color: Colors.grey,
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     );
    //                   }).toList(),
    //                 ),
    //               ),
    //               body: TabBarView(
    //                 children: dates.map((date) {
    //                   final sortedsessions =
    //                       sortSessions(groupedSessions[date]!);
    //                   return ListView.builder(
    //                     itemCount: sortedsessions.length,
    //                     padding: const EdgeInsets.symmetric(horizontal: 10),
    //                     itemBuilder: (context, index) {
    //                       return GestureDetector(
    //                         onTap: () {
    //                           final mainSession = sortedsessions[index];
    //                           final otherSessions = sortedsessions
    //                               .where((s) =>
    //                                   s.startsAt == mainSession.startsAt &&
    //                                   s.id != mainSession.id)
    //                               .toList();
    //                           Navigator.push(
    //                             context,
    //                             MaterialPageRoute(
    //                               builder: (context) => SessionScreen(
    //                                 session: mainSession,
    //                                 sessions: otherSessions,
    //                                 rooms: droidcon.rooms,
    //                               ),
    //                             ),
    //                           );
    //                         },
    //                         child: SessionItem(
    //                           session: sortedsessions[index],
    //                           rooms: droidcon.rooms,
    //                         ),
    //                       );
    //                     },
    //                   );
    //                 }).toList(),
    //               ),
    //             ),
    //           );
    //         },
    //       );
    //     },
    //   ),
    // );
  }
}
