import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:udsp59/styles/form_factor.dart';
import 'package:udsp59/styles/text_style.dart';

class TitleHeader extends StatelessWidget {
  const TitleHeader({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        MediaQuery.of(context).size.width > FormFactor.tightPhone ? 10 : 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/logo.png',
                height:
                    MediaQuery.of(context).size.width > FormFactor.tightPhone
                        ? 100
                        : 70,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width > FormFactor.tightPhone
                    ? 10
                    : 0,
              ),
              Text(
                tr("appName"),
                style: textStyleAppTitle(context),
              ),
            ],
          ),
          TextButton(
            style: ButtonStyle(
              alignment: Alignment.center,
              shape: MaterialStateProperty.all(const CircleBorder()),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              foregroundColor: MaterialStateProperty.all(
                  Theme.of(context).colorScheme.inverseSurface),
              elevation: MaterialStateProperty.all(0),
            ),
            onPressed: () {
              debugPrint("User want to acceed about page");
              Navigator.pushNamed(context, '/about');
            },
            child: Icon(
              Icons.info_rounded,
              size: MediaQuery.of(context).size.width > FormFactor.tightPhone
                  ? 32
                  : 20,
            ),
          ),
        ],
      ),
    );
  }
}
