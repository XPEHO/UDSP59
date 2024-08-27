import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udsp59/entities/module_part.dart';
import 'package:udsp59/features/module_accordion_part_element.dart';
import 'package:udsp59/state/providers/storage_providers.dart';
import 'package:udsp59/styles/text_style.dart';

class ModuleAccordionPart extends ConsumerStatefulWidget {
  final ModulePart modulePart;
  final int index;
  final bool isOpen;

  const ModuleAccordionPart({
    super.key,
    required this.modulePart,
    required this.index,
    this.isOpen = false,
  });

  @override
  ConsumerState<ModuleAccordionPart> createState() =>
      _ModuleAccordionPartState();
}

class _ModuleAccordionPartState extends ConsumerState<ModuleAccordionPart>
    with TickerProviderStateMixin {
  bool isOpen = false;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    isOpen = widget.isOpen;
    if (isOpen) {
      _animationController.forward();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final imageUrl = ref.watch(imageUrlProvider(widget.modulePart.image));

    return InkWell(
      onTap: () {
        setState(() {
          isOpen = !isOpen;
          if (isOpen) {
            _animationController.forward();
          } else {
            _animationController.reverse();
          }
        });
      },
      // Animated Container
      child: AnimatedContainer(
        duration:
            _animationController.duration ?? const Duration(milliseconds: 300),
        width: 400,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 15),
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
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "${widget.index + 1}",
                    style: textStyleNumerotation(context),
                  ),
                ),
                Expanded(
                  child: Text(
                    widget.modulePart.subtitle,
                    style: textStyleModuleContent(context),
                  ),
                ),
                if (widget.modulePart.elements.isNotEmpty ||
                    widget.modulePart.image != "")
                  Icon(
                    isOpen ? Icons.expand_less : Icons.expand_more,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
              ],
            ),
            if (widget.modulePart.elements.isNotEmpty ||
                widget.modulePart.image != "")
              SizeTransition(
                sizeFactor: CurvedAnimation(
                  parent: _animationController,
                  curve: Curves.easeInOut,
                ),
                axis: Axis.vertical,
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 5),
                    child: Column(
                      children: [
                        if (imageUrl != "")
                          Image.network(
                            imageUrl,
                            fit: BoxFit.contain,
                            height: 100,
                          ),
                        if (imageUrl != "")
                          const SizedBox(
                            height: 10,
                          ),
                        Column(
                          children: widget.modulePart.elements
                              .map(
                                (elt) => ModuleAccordionPartElement(
                                  element: elt,
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
