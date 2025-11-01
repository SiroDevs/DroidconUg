part of '../session_screen.dart';

class SessionInfo extends StatelessWidget {
  final Session session;

  const SessionInfo({super.key, required this.session});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                session.title ?? 'Session Title',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),

              const SizedBox(height: 16),

              if (session.description != null &&
                  session.description!.isNotEmpty)
                Text(
                  session.description!,
                  style: TextStyle(
                    fontSize: 15,
                    // color: Colors.grey[700],
                    height: 1.5,
                  ),
                )
              else
                Text(
                  'No description available',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontStyle: FontStyle.italic,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
