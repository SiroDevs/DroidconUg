part of '../speaker_screen.dart';

  Icon getSocialIcon(String platform) {
    switch (platform) {
      case 'x (twitter)':
        return const Icon(FontAwesome.twitter);
      case 'linkedin':
        return const Icon(FontAwesome.linkedin);
      case 'github':
        return const Icon(FontAwesome.github);
      case 'website':
      case 'web':
        return const Icon(FontAwesome.globe);
      case 'facebook':
        return const Icon(FontAwesome.facebook);
      case 'instagram':
        return const Icon(FontAwesome.instagram);
      case 'youtube':
        return const Icon(FontAwesome.youtube);
      case 'telegram':
        return const Icon(FontAwesome.telegram);
      case 'whatsapp':
        return const Icon(FontAwesome.whatsapp);
      default:
        return const Icon(Icons.link);
    }
  }

  Color getSocialColor(String platform) {
    switch (platform) {
      case 'x (twitter)':
        return const Color(0xFF1DA1F2);
      case 'linkedin':
        return const Color(0xFF0077B5);
      case 'github':
        return Colors.black;
      case 'website':
      case 'web':
        return Colors.green;
      case 'facebook':
        return const Color(0xFF1877F2);
      case 'instagram':
        return const Color(0xFFE4405F);
      case 'youtube':
        return const Color(0xFFFF0000);
      case 'telegram':
        return const Color(0xFF0088CC);
      case 'whatsapp':
        return const Color(0xFF25D366);
      default:
        return ThemeColors.primary;
    }
  }