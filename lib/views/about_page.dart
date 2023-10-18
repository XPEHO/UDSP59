//import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:udsp59/features/page_header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:udsp59/styles/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageHeader(pageTitle: 'aboutTitle'),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tr('aboutSubtitle1'),
              style: textStylePageSubtitle(),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: tr("aboutPart1Span1"),
                      style: textStyleParagraph(),
                      children: [
                        TextSpan(
                          text: tr("aboutPart1Span2"),
                          style: textStyleParagraphImportant(),
                        ),
                        TextSpan(
                          text: tr("aboutPart1Span3"),
                        ),
                        TextSpan(
                          text: " ${tr("aboutPart1Span4")}",
                          style: textStyleParagraphImportant(),
                        ),
                        TextSpan(
                          text: " ${tr("aboutPart1Span5")}",
                        ),
                        TextSpan(
                          text: " ${tr("aboutPart1Span6")}",
                          style: textStyleParagraphImportant(),
                        ),
                        TextSpan(
                          text: tr("aboutPart1Span7"),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: tr("aboutPart2Span1"),
                      style: textStyleParagraph(),
                      children: [
                        TextSpan(
                          text: " ${tr("aboutPart2Span2")}",
                          style: textStyleParagraphImportant(),
                        ),
                        TextSpan(
                          text: " ${tr("aboutPart2Span3")}",
                        ),
                        TextSpan(
                          text: " ${tr("aboutPart2Span4")}",
                          style: textStyleParagraphImportant(),
                        ),
                        TextSpan(
                          text: tr("aboutPart2Span5"),
                        ),
                        TextSpan(
                          text: " ${tr("aboutPart2Span6")}",
                          style: textStyleParagraphImportant(),
                        ),
                        TextSpan(
                          text: tr("aboutPart2Span7"),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: tr("aboutPart3Span1"),
                      style: textStyleParagraph(),
                      children: [
                        TextSpan(
                          text: tr("aboutPart3Span2"),
                          style: textStyleParagraphImportant(),
                        ),
                        TextSpan(
                          text: " ${tr("aboutPart3Span3")}",
                        ),
                        TextSpan(
                          text: " ${tr("aboutPart3Span4")}",
                          style: textStyleParagraphImportant(),
                        ),
                        TextSpan(
                          text: " ${tr("aboutPart3Span5")}",
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              tr('aboutSubtitle2'),
              style: textStylePageSubtitle(),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () async {
                    final Uri url = Uri.parse(
                        'https://www.facebook.com/people/UDSP59-Formation/100076222514271/');
                    if (await canLaunchUrl(url)) {
                      if (!await launchUrl(
                        url,
                        mode: LaunchMode.inAppWebView,
                      )) {
                        throw Exception('Could not launch $url');
                      }
                    }
                  },
                  child: Icon(
                    FontAwesomeIcons.facebookF,
                    size: 30,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    final Uri url = Uri.parse(
                        'https://www.instagram.com/udsp59formation?igshid=MzRIODBiNWFIZA==');
                    if (await canLaunchUrl(url)) {
                      if (!await launchUrl(
                        url,
                        mode: LaunchMode.inAppWebView,
                      )) {
                        throw Exception('Could not launch $url');
                      }
                    }
                  },
                  child: Icon(
                    FontAwesomeIcons.instagram,
                    size: 35,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    final Uri url = Uri(
                      scheme: 'mailto',
                      path: 'contact@udsp59formation.fr',
                    );
                    if (await canLaunchUrl(url)) {
                      if (!await launchUrl(url)) {
                        throw Exception('Could not launch $url');
                      }
                    }
                  },
                  child: Icon(
                    FontAwesomeIcons.paperPlane,
                    size: 30,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    final Uri url = Uri(
                      scheme: 'tel',
                      path: '112',
                    );
                    if (await canLaunchUrl(url)) {
                      if (!await launchUrl(url)) {
                        throw Exception('Could not launch $url');
                      }
                    }
                  },
                  child: Icon(
                    FontAwesomeIcons.phone,
                    size: 30,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    final Uri url = Uri.parse('https://udsp59formation.fr/');
                    if (await canLaunchUrl(url)) {
                      if (!await launchUrl(
                        url,
                        mode: LaunchMode.externalApplication,
                      )) {
                        throw Exception('Could not launch $url');
                      }
                    }
                  },
                  child: Icon(
                    Icons.language,
                    size: 35,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
