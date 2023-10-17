import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TitleHeader extends StatelessWidget {
  const TitleHeader({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',
            height: 100,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tr("appName"),
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Transform.scale(
            scale: 1.25,
            child: TextButton(
              style: ButtonStyle(
                alignment: Alignment.center,
                shape: MaterialStateProperty.all(const CircleBorder()),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                foregroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.secondary),
                elevation: MaterialStateProperty.all(0),
              ),
              onPressed: () {
                debugPrint("User want to acceed about page");
              },
              child: const Icon(Icons.info_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
