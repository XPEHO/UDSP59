import 'package:flutter/material.dart';
import 'package:udsp59/entities/module.dart';

class ModulesCarouselElement extends StatelessWidget {
  final Module module;

  const ModulesCarouselElement({
    super.key,
    required this.module,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('User want to acceed page of the module ${module.title}');
        Navigator.pushNamed(context, '/module', arguments: module);
      },
      child: Container(
        height: 115,
        constraints: const BoxConstraints(minWidth: 155, maxWidth: 175),
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
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
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
                Icon(
                  size: 45,
                  IconData(module.icon, fontFamily: 'MaterialIcons'),
                  color: Theme.of(context).colorScheme.secondary,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
