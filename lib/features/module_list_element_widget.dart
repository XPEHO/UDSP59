import 'package:flutter/material.dart';
import 'package:udsp59/main.dart';

class ModuleListElementWidget extends StatelessWidget {
  final Map module;

  const ModuleListElementWidget({
    super.key,
    required this.module,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (appInDebugMode) {
          print("User want to acceed page of the module " + module["title"]);
        }
      },
      child: Container(
        height: 100,
        width: 150,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        padding: const EdgeInsets.all(10),
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              module["title"],
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.arrow_forward,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                Icon(
                  Icons.fire_extinguisher,
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
