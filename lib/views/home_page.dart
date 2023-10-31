import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:udsp59/entities/module.dart';
import 'package:udsp59/features/modules_carousel.dart';
import 'package:udsp59/features/title_header.dart';
import 'package:udsp59/styles/text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Module> modules = [];

  @override
  Widget build(BuildContext context) {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      modules = ModalRoute.of(context)!.settings.arguments as List<Module>;
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TitleHeader(),
              const SizedBox(
                height: 40,
              ),
              Text(
                tr("homeEmergency"),
                style: textStyleHookTitle(context),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                tr("homeClickEmergency"),
                textAlign: TextAlign.center,
                style: textStyleHookSubtitle(context),
              ),
              const SizedBox(
                height: 40,
              ),
              const Placeholder(
                fallbackHeight: 180,
              ),
              const SizedBox(
                height: 40,
              ),
              RichText(
                text: TextSpan(
                  text: tr("homeWaiting"),
                  style: textStylePageSubtitle(context),
                  children: [
                    TextSpan(
                      text: " ${tr("homeWaitingAct")}",
                      style: textStylePageSubtitleImportant(context),
                    ),
                    TextSpan(
                      text: " ${tr("homeWaitingExclamation")}",
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              if (modules != []) ModulesCarousel(modules: modules),
            ],
          ),
        ),
      ),
    );
  }
}
