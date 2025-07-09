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
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.25),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(
                Icons.navigate_before,
                semanticLabel: "Retour à la page d'accueil",
              ),
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
      ),
    );
  }
}
