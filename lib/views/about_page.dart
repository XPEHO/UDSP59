//import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:udsp59/features/page_header.dart';
import 'package:udsp59/features/mixed_paragraph.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:udsp59/features/url_linked_icon.dart';
import 'package:udsp59/styles/text_style.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PageHeader(
                pageTitle: 'aboutTitle',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tr('aboutSubtitle1'),
                      style: textStylePageSubtitle(context),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MixedParagraph(context, textKeys: const [
                            'aboutPart1Span1',
                            'aboutPart1Span2_b',
                            'aboutPart1Span3',
                            'aboutPart1Span4_sb',
                            'aboutPart1Span5_s',
                            'aboutPart1Span6_sb',
                            'aboutPart1Span7',
                          ]),
                          const SizedBox(
                            height: 10,
                          ),
                          MixedParagraph(context, textKeys: const [
                            'aboutPart2Span1',
                            'aboutPart2Span2_sb',
                            'aboutPart2Span3_s',
                            'aboutPart2Span4_sb',
                            'aboutPart2Span5',
                            'aboutPart2Span6_sb',
                            'aboutPart2Span7',
                          ]),
                          const SizedBox(
                            height: 10,
                          ),
                          MixedParagraph(context, textKeys: const [
                            'aboutPart3Span1',
                            'aboutPart3Span2_b',
                            'aboutPart3Span3_s',
                            'aboutPart3Span4_sb',
                            'aboutPart3Span5_s',
                          ]),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      tr('aboutSubtitle2'),
                      style: textStylePageSubtitle(context),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          UrlLinkedIcon(
                            context,
                            icon: FontAwesomeIcons.facebookF,
                            url:
                                'https://www.facebook.com/people/UDSP59-Formation/100076222514271/',
                            size: 30,
                          ),
                          UrlLinkedIcon(
                            context,
                            icon: FontAwesomeIcons.instagram,
                            url:
                                'https://www.instagram.com/udsp59formation?igshid=MzRIODBiNWFIZA==',
                            size: 35,
                          ),
                          UrlLinkedIcon(
                            context,
                            icon: FontAwesomeIcons.paperPlane,
                            url: 'mailto:contact@udsp59formation.fr',
                            size: 30,
                          ),
                          UrlLinkedIcon(
                            context,
                            icon: Icons.language,
                            url: 'https://udsp59formation.fr/',
                            size: 35,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
