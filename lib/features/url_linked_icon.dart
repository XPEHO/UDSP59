import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLinkedIcon extends StatelessWidget {
  final IconData icon;
  final String url;
  final double size;

  const UrlLinkedIcon({
    super.key,
    this.icon = Icons.language,
    required this.url,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          if (!await launchUrl(
            uri,
            mode: LaunchMode.externalApplication,
          )) {
            throw Exception('Could not launch $url');
          }
        }
      },
      child: Icon(
        icon,
        size: size,
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
