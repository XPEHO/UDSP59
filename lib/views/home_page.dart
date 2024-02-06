import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udsp59/entities/module.dart';
import 'package:udsp59/features/modules_carousel.dart';
import 'package:udsp59/features/tips_card_switcher.dart';
import 'package:udsp59/features/title_header.dart';
import 'package:udsp59/state/providers/modules_providers.dart';
import 'package:udsp59/styles/form_factor.dart';
import 'package:udsp59/styles/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Module> modules = ref.watch(modulesProvider).when(
          data: (List<Module> modules) => modules,
          loading: () => [],
          error: (error, stack) {
            debugPrint('Error: $error');
            return [];
          },
        );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/background.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.width >
                            FormFactor.tightPhone
                        ? 110
                        : 130),
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const TitleHeader(),
                    const SizedBox(
                      height: 30,
                    ),
                    RichText(
                      text: TextSpan(
                        text: tr("homeHook"),
                        style: textStyleSubtitle(context),
                        children: [
                          TextSpan(
                            text: " ${tr("homeHookPlus")}",
                            style: textStyleSubtitleMore(context),
                          ),
                          TextSpan(
                            text: " ${tr("homeHookExclamation")}",
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    if (modules != []) ModulesCarousel(modules: modules),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        tr("homeLearn"),
                        style: textStyleSubtitleLess(context),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TipsCardSwitcher(),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flex(
                      direction: MediaQuery.of(context).size.width >
                              FormFactor.tightPhone
                          ? Axis.horizontal
                          : Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () async {
                            String url =
                                'https://github.com/XPEHO/UDSP59/blob/main/PRIVACY_POLICY.md';
                            final Uri uri = Uri.parse(url);
                            if (await canLaunchUrl(uri)) {
                              if (!await launchUrl(
                                uri,
                                mode: LaunchMode.externalApplication,
                              )) {
                                throw Exception('Could not launch $url');
                              }
                            }
                          },
                          child: Text(
                            tr("privacyPolicy"),
                            textAlign: TextAlign.center,
                            style: textStyleFooterLink(context),
                          ),
                        ),
                        if (MediaQuery.of(context).size.width >
                            FormFactor.tightPhone)
                          Text(
                            "·",
                            textAlign: TextAlign.center,
                            style: textStyleFooterText(context),
                          ),
                        TextButton(
                          onPressed: () async {
                            String url = 'https://udsp59formation.fr/';
                            final Uri uri = Uri.parse(url);
                            if (await canLaunchUrl(uri)) {
                              if (!await launchUrl(
                                uri,
                                mode: LaunchMode.externalApplication,
                              )) {
                                throw Exception('Could not launch $url');
                              }
                            }
                          },
                          child: Text(
                            tr("contactUs"),
                            textAlign: TextAlign.center,
                            style: textStyleFooterLink(context),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () async {
                        String url = 'https://xpeho.com';
                        final Uri uri = Uri.parse(url);
                        if (await canLaunchUrl(uri)) {
                          if (!await launchUrl(
                            uri,
                            mode: LaunchMode.externalApplication,
                          )) {
                            throw Exception('Could not launch $url');
                          }
                        }
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: tr("byXpeho"),
                              style: textStyleFooterText(context),
                            ),
                            TextSpan(
                              text: "XPEHO",
                              style: textStyleOwner(context),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
