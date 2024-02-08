import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udsp59/entities/module_part_element.dart';
import 'package:udsp59/state/providers/storage_providers.dart';
import 'package:udsp59/styles/text_style.dart';

class ModuleAccordionPartElement extends ConsumerWidget {
  final ModulePartElement element;

  const ModuleAccordionPartElement({
    super.key,
    required this.element,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageUrl = ref.watch(imageUrlProvider(element.image));

    return Row(
      children: [
        Expanded(
          child: Text(
            '· ${element.text}',
            style: textStyleModuleSubContent(context),
            textAlign: TextAlign.start,
          ),
        ),
        if (imageUrl != "")
          const SizedBox(
            width: 10,
          ),
        if (imageUrl != "")
          Image.network(
            imageUrl,
            fit: BoxFit.contain,
            width: 80,
          ),
      ],
    );
  }
}
