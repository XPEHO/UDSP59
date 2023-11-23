import 'package:flutter/material.dart';

TextStyle textStyleAppTitle(BuildContext context) {
  return TextStyle(
    fontSize: MediaQuery.of(context).size.width > 380 ? 32 : 22,
    fontWeight: FontWeight.bold,
    color: const Color(0xFF251438),
  );
}

TextStyle textStyleHookTitle(BuildContext context) {
  return const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Color(0xFFCB2738),
  );
}

TextStyle textStyleHookSubtitle(BuildContext context) {
  return const TextStyle(
    fontSize: 15,
    height: 1.25,
    fontWeight: FontWeight.w400,
    color: Color(0xFFCF6C28),
  );
}

TextStyle textStylePageTitle(BuildContext context) {
  return const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Color(0xFF251438),
  );
}

TextStyle textStylePageSubtitle(BuildContext context) {
  return const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: Color(0xFF251438),
  );
}

TextStyle textStylePageSubtitleImportant(BuildContext context) {
  return const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Color(0xFF251438),
  );
}

TextStyle textStyleLearnCardTitle(BuildContext context) {
  return const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Color(0xFFCF6C28),
  );
}

TextStyle textStyleLearnCardContent(BuildContext context) {
  return const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: Color(0xFF251438),
  );
}

TextStyle textStyleModule(BuildContext context) {
  return const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: Color(0xFF251438),
  );
}

TextStyle textStyleNumerotation(BuildContext context) {
  return const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: Color(0xFFCF6C28),
  );
}

TextStyle textStyleParagraph(BuildContext context) {
  return const TextStyle(
    fontSize: 15,
    height: 1.25,
    fontWeight: FontWeight.w300,
    color: Color(0xFF251438),
  );
}

TextStyle textStyleParagraphImportant(BuildContext context) {
  return const TextStyle(
    fontSize: 15,
    height: 1.25,
    fontWeight: FontWeight.w400,
    color: Color(0xFF251438),
  );
}

TextStyle textStyleOwner(BuildContext context) {
  return const TextStyle(
    fontSize: 15,
    height: 1,
    fontWeight: FontWeight.w400,
    color: Color(0xFFA0CE4E),
  );
}

TextStyle textStyleOwnerBase(BuildContext context) {
  return const TextStyle(
    fontSize: 15,
    height: 1,
    fontWeight: FontWeight.w400,
    color: Color(0xFF251438),
  );
}
