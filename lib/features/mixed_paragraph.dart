import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:udsp59/styles/text_style.dart';

class MixedParagraph extends StatelessWidget {
  final List<String> textKeys;

  const MixedParagraph(
    BuildContext context, {
    super.key,
    required this.textKeys,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: textKeys.map((key) {
          return TextSpan(
            text: key.endsWith('_s') || key.endsWith('_sb')
                ? ' ${tr(key)}'
                : tr(key),
            style: key.endsWith('_b') || key.endsWith('_sb')
                ? textStyleParagraphImportant(context)
                : textStyleParagraph(context),
          );
        }).toList(),
      ),
      textAlign: TextAlign.justify,
    );
  }
}
