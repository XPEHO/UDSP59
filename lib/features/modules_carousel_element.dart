import 'package:flutter/material.dart';
import 'package:udsp59/entities/module.dart';
import 'package:udsp59/styles/text_style.dart';
import 'package:material_icons_named/material_icons_named.dart';

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
        width: module.title.length > 18 ? 190 : 150,
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
                module.icon != ""
                    ? Icon(
                        size: 45,
                        materialIcons[module.icon],
                        color: Theme.of(context).colorScheme.secondary,
                      )
                    : Icon(
                        size: 45,
                        Icons.health_and_safety,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
