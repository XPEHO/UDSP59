import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:udsp59/entities/module.dart';
import 'package:udsp59/extensions/text_scaler_extension.dart';
import 'package:udsp59/features/modules_carousel.dart';
import 'package:udsp59/features/tips_card_switcher.dart';
import 'package:udsp59/features/title_header.dart';
import 'package:udsp59/state/providers/local_providers.dart';
import 'package:udsp59/state/providers/modules_providers.dart';
import 'package:udsp59/state/providers/tips_providers.dart';
import 'package:udsp59/styles/form_factor.dart';
import 'package:udsp59/styles/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

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
        child: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(
            physics: const BouncingScrollPhysics(),
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
              PointerDeviceKind.trackpad,
            },
          ),
          child: RefreshIndicator(
            onRefresh: () async {
              // Get the scaffold messenger
              final scaffoldMessenger = ScaffoldMessenger.of(context);
              // Get the shared preferences instance to manage the cache
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();

              // Get the last reload date from the cache
              final String? lastReload = prefs.getString('lastReload');
              if (lastReload != null) {
                // Prevent the user from spamming the refresh button
                if (DateTime.now()
                        .toUtc()
                        .difference(DateTime.parse(lastReload))
                        .inMinutes <
                    1) {
                  // Display a snackbar to inform the user
                  scaffoldMessenger.showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Doucement, y a pas le feu au lac !",
                        style: TextStyle(color: Color(0xFF99201C)),
                        textAlign: TextAlign.center,
                      ),
                      duration: Duration(seconds: 1),
                    ),
                  );
                  return;
                }
              }

              // Remove the tips and modules last read date from the cache
              await prefs.remove('lastTipsRead');
              await prefs.remove('lastModulesRead');
              // Make the loading indicator last a bit longer
              return Future.delayed(const Duration(milliseconds: 300), () {
                // Invalidate the providers to force a refresh
                ref.invalidate(lastTipsReadProvider);
                ref.invalidate(lastModulesReadProvider);

                ref.invalidate(tipsProvider);
                ref.invalidate(modulesProvider);
                prefs.setString(
                  'lastReload',
                  DateTime.now().toUtc().toString(),
                );
              });
            },
            color: Colors.red,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
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
                                  FormFactor.tightPhone &&
                              MediaQuery.textScalerOf(context).proxyFactor <= 1
                          ? 110
                          : 160,
                    ),
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
                            style: textStyleSubtitle(context).copyWith(
                              fontSize: MediaQuery.textScalerOf(context)
                                  .scale(textStyleSubtitle(context).fontSize!),
                            ),
                            children: [
                              TextSpan(
                                text: " ${tr("homeHookPlus")}",
                                style: textStyleSubtitleMore(context).copyWith(
                                  fontSize:
                                      MediaQuery.textScalerOf(context).scale(
                                    textStyleSubtitleMore(context).fontSize!,
                                  ),
                                ),
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
                        modules.isNotEmpty
                            ? ModulesCarousel(modules: modules)
                            : Text(
                                tr("homeNoModule"),
                                style: textStyleParagraph(context),
                                textAlign: TextAlign.center,
                              ),
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
                    bottom: 10 + MediaQuery.of(context).padding.bottom,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flex(
                          direction: MediaQuery.of(context).size.width >
                                      FormFactor.tightPhone &&
                                  MediaQuery.textScalerOf(context)
                                          .proxyFactor <=
                                      1
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
                                semanticsLabel:
                                    "Consulter la politique de confidentialité",
                                textAlign: TextAlign.center,
                                style: textStyleFooterLink(context),
                              ),
                            ),
                            if (MediaQuery.of(context).size.width >
                                    FormFactor.tightPhone &&
                                MediaQuery.textScalerOf(context).proxyFactor <=
                                    1)
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
                                semanticsLabel:
                                    "Consulter le site de l'association",
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
                                  style: textStyleFooterText(context).copyWith(
                                    fontSize:
                                        MediaQuery.textScalerOf(context).scale(
                                      textStyleFooterText(context).fontSize!,
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: "XPEHO",
                                  semanticsLabel:
                                      "XPEHO. Consulter le site de XPEHO, les créateurs de l'application",
                                  style: textStyleOwner(context).copyWith(
                                    fontSize:
                                        MediaQuery.textScalerOf(context).scale(
                                      textStyleOwner(context).fontSize!,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
