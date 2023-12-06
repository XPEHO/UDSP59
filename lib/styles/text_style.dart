import 'package:flutter/material.dart';
import 'package:udsp59/styles/form_factor.dart';

TextStyle textStyleAppTitle(BuildContext context) {
  return TextStyle(
    fontSize:
        MediaQuery.of(context).size.width > FormFactor.tightPhone ? 32 : 22,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.inverseSurface,
  );
}

TextStyle textStyleSubtitle(BuildContext context) {
  return TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.primary,
  );
}

TextStyle textStyleSubtitleMore(BuildContext context) {
  return TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.primary,
  );
}

TextStyle textStyleSubtitleLess(BuildContext context) {
  return TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.inverseSurface,
  );
}

TextStyle textStylePageTitle(BuildContext context) {
  return TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.inverseSurface,
  );
}

TextStyle textStyleTipsCardTitle(BuildContext context) {
  return TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.secondary,
  );
}

TextStyle textStyleTipsCardContent(BuildContext context) {
  return TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.inversePrimary,
  );
}

TextStyle textStyleModule(BuildContext context) {
  return TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.inversePrimary,
  );
}

TextStyle textStyleModuleContent(BuildContext context) {
  return TextStyle(
    fontSize: 15,
    height: 1.25,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.inversePrimary,
  );
}

TextStyle textStyleModuleSubContent(BuildContext context) {
  return TextStyle(
    fontSize: 15,
    height: 1.25,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.inversePrimary,
  );
}

TextStyle textStyleNumerotation(BuildContext context) {
  return TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.secondary,
  );
}

TextStyle textStyleParagraph(BuildContext context) {
  return TextStyle(
    fontSize: 15,
    height: 1.25,
    fontWeight: FontWeight.w300,
    color: Theme.of(context).colorScheme.inverseSurface,
  );
}

TextStyle textStyleParagraphMore(BuildContext context) {
  return TextStyle(
    fontSize: 15,
    height: 1.25,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.inverseSurface,
  );
}

TextStyle textStyleFooterLink(BuildContext context) {
  return TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.inverseSurface,
    decoration: TextDecoration.underline,
    decorationColor: Theme.of(context).colorScheme.inverseSurface,
  );
}

TextStyle textStyleFooterText(BuildContext context) {
  return TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.inverseSurface,
  );
}

TextStyle textStyleOwner(BuildContext context) {
  return TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.primary,
    decoration: TextDecoration.underline,
    decorationColor: Theme.of(context).colorScheme.inverseSurface,
  );
}
