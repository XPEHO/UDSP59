//import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udsp59/entities/module.dart';
import 'package:udsp59/features/module_accordion.dart';
import 'package:udsp59/features/page_header.dart';
import 'package:udsp59/state/providers/storage_providers.dart';
import 'package:udsp59/styles/text_style.dart';

class ModulePage extends ConsumerWidget {
  const ModulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final module = ModalRoute.of(context)!.settings.arguments as Module;
    final imageUrl = ref.watch(imageUrlProvider(module.image));

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageHeader(pageTitle: module.title),
            if (imageUrl != "")
              Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 250,
                semanticLabel: "Image illustrant le module : ${module.title}",
              ),
            if (imageUrl != "")
              const SizedBox(
                height: 25,
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                tr('moduleSubtitle'),
                style: textStyleSubtitle(context),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ModuleAccordion(module: module),
            ),
          ],
        ),
      ),
    );
  }
}
