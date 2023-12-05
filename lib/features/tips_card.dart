import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:udsp59/styles/text_style.dart';

class TipsCard extends StatelessWidget {
  final String tips;

  const TipsCard({
    super.key,
    required this.tips,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          tr("didYouKnow"),
          textAlign: TextAlign.center,
          style: textStyleTipsCardTitle(context),
        ),
        const SizedBox(
          height: 16,
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          clipBehavior: Clip.none,
          child: Text(
            tips,
            textAlign: TextAlign.center,
            style: textStyleTipsCardContent(context),
          ),
        ),
      ],
    );
  }
}
