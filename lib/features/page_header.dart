import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:udsp59/styles/text_style.dart';

class PageHeader extends StatelessWidget {
  final String pageTitle;

  const PageHeader({
    super.key,
    required this.pageTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            icon: const Icon(Icons.navigate_before),
            color: Theme.of(context).colorScheme.primary,
            iconSize: 40,
            onPressed: () => Navigator.pop(context),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text(
                tr(pageTitle),
                style: textStylePageTitle(context),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
