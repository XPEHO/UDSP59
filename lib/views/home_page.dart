import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:udsp59/entities/module.dart';
import 'package:udsp59/features/modules_carousel.dart';
import 'package:udsp59/features/title_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Module> modules = [];

  @override
  Widget build(BuildContext context) {
    modules = ModalRoute.of(context)!.settings.arguments as List<Module>;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TitleHeader(),
            const SizedBox(
              height: 40,
            ),
            Text(
              tr("homeEmergency"),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              tr("homeClickEmergency"),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                height: 1.25,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.secondary,
              ),
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
                style: TextStyle(
                  fontSize: 24,
                  height: 1.25,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.primary,
                ),
                children: [
                  TextSpan(
                    text: " ${tr("homeWaitingAct")}",
                    style: TextStyle(
                      fontSize: 24,
                      height: 1.25,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  TextSpan(
                    text: " !",
                    style: TextStyle(
                      fontSize: 24,
                      height: 1.25,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ModulesCarousel(modules: modules),
          ],
        ),
      ),
    );
  }
}
