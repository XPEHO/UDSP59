import 'package:flutter/material.dart';
import 'package:udsp59/entities/module.dart';
import 'package:udsp59/styles/text_style.dart';

Map<String, IconData> moduleIcons = {
  "protect": Icons.health_and_safety,
  "malaise": Icons.mood_bad,
  "unconscious": Icons.airline_seat_flat,
  "reanimation": Icons.heart_broken,
  "defibrillator": Icons.monitor_heart,
  "trauma": Icons.personal_injury,
  "burn": Icons.local_fire_department,
  "bleeding": Icons.bloodtype,
};

class ModulesCarouselElement extends StatelessWidget {
  final Module module;

  const ModulesCarouselElement({
    super.key,
    required this.module,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint('User want to acceed page of the module ${module.title}');
        Navigator.pushNamed(context, '/module', arguments: module);
      },
      child: Container(
        height: 115,
        width: module.title == "Réanimation Cardio-pulmonaire" ? 178 : 155,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        padding: const EdgeInsets.fromLTRB(15, 16, 10, 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(2, 2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                module.title,
                style: textStyleModule(context),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  size: 26,
                  Icons.arrow_forward,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                moduleIcons[module.icon] != null
                    ? Icon(
                        size: 45,
                        moduleIcons[module.icon],
                        color: Theme.of(context).colorScheme.secondary,
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
