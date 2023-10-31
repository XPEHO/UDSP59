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
              /* const SizedBox(
                height: 5,
              ),
              Text(
                tr("homeClickEmergency"),
                textAlign: TextAlign.center,
                style: textStyleHookSubtitle(context),
              ), */
              const SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                constraints: const BoxConstraints(
                  minHeight: 180,
                ),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Le saviez-vous ?',
                      textAlign: TextAlign.center,
                      style: textStyleLearnCardTitle(context),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Pour les malentendants le numéro d\'urgence est le 114.',
                      textAlign: TextAlign.center,
                      style: textStyleLearnCardContent(context),
                    ),
                  ],
                ),
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
