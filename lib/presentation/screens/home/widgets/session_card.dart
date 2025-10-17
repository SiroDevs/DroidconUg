part of '../home_screen.dart';

class SessionCard extends StatelessWidget {
  final SessionExt session;
  final bool isCompact;

  const SessionCard({
    Key? key,
    required this.session,
    this.isCompact = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white,
              Colors.grey[50]!,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              session.title ?? 'No Title',
              style: TextStyle(
                fontSize: isCompact ? 14 : 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            
            const SizedBox(height: 8),
            
            // Time and Room
            Row(
              children: [
                Icon(
                  Icons.access_time,
                  size: 12,
                  color: Colors.grey[500],
                ),
                const SizedBox(width: 4),
                Text(
                  '${_formatTime(session.startsAt)} - ${_formatTime(session.endsAt)}',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(width: 8),
                Icon(
                  Icons.location_on,
                  size: 12,
                  color: Colors.grey[500],
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    session.venue ?? 'Unknown Room',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey[600],
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 8),
            
            // Speaker Info
            Row(
              children: [
                // Avatar
                if (session.avatar != null && session.avatar!.isNotEmpty)
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(session.avatar!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                else
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    child: Icon(
                      Icons.person,
                      size: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                
                const SizedBox(width: 8),
                
                // Name
                Expanded(
                  child: Text(
                    '${session.firstName ?? ''} ${session.lastName ?? ''}'.trim(),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700],
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                
                // Bookmark Icon
                Icon(
                  session.bookmarked == true 
                      ? Icons.bookmark 
                      : Icons.bookmark_border,
                  size: 16,
                  color: session.bookmarked == true 
                      ? Theme.of(context).primaryColor 
                      : Colors.grey[400],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formatTime(String? timeString) {
    if (timeString == null) return '';
    try {
      final time = timeString.substring(11, 16);
      return time;
    } catch (e) {
      return '';
    }
  }
}