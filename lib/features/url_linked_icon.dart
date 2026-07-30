import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLinkedIcon extends StatelessWidget {
  final FaIconData icon;
  final String url;
  final double size;
  final String semanticLabel;

  const UrlLinkedIcon({
    super.key,
    this.icon = const FaIconData(Icons.language),
    required this.url,
    required this.size,
    this.semanticLabel = '',
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
            throw Exception('Could not launch $url');
          }
        }
      },
      child: FaIcon(
        icon,
        size: size,
        color: Theme.of(context).colorScheme.inverseSurface,
        semanticLabel: semanticLabel,
      ),
    );
  }
}
