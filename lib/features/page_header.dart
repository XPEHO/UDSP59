import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget implements PreferredSizeWidget {
  final String pageTitle;

  const PageHeader({
    super.key,
    required this.pageTitle,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text(
        tr(pageTitle),
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      centerTitle: true,
      iconTheme:
          IconThemeData(color: Theme.of(context).colorScheme.primary, size: 40),
      leading: IconButton(
        icon: const Icon(Icons.navigate_before),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
