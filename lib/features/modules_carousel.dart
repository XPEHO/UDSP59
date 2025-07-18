import 'package:flutter/material.dart';
import 'package:udsp59/entities/module.dart';
import 'package:udsp59/features/modules_carousel_element.dart';
import 'package:udsp59/features/dots_stepper.dart';
import 'package:udsp59/styles/form_factor.dart';

class ModulesCarousel extends StatefulWidget {
  final List<Module> modules;

  const ModulesCarousel({
    super.key,
    required this.modules,
  });

  @override
  State<ModulesCarousel> createState() => _ModulesCarouselState();
}

class _ModulesCarouselState extends State<ModulesCarousel> {
  final ScrollController _scrollController = ScrollController();

  void _onStepChanged(int step) {
    _scrollController.animateTo(
      (190 * step)
          .toDouble(), // 190 is the approximate width of each module + padding
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width < FormFactor.biggerThanTablet
              ? double.infinity
              : FormFactor.biggerThanTablet,
          height: 140,
          child: ListView.builder(
            controller: _scrollController,
            padding: const EdgeInsets.all(10),
            itemCount: widget.modules.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ModulesCarouselElement(module: widget.modules[index]);
            },
          ),
        ),
        if (widget.modules.length > 1)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: DotsStepper(
              stepCount: widget.modules.length,
              initialStep: 0,
              confidence: 0,
              color: Colors.white.withValues(alpha: 0.4),
              activeColor: Colors.white,
              intermediateColor: Colors.white.withValues(alpha: 0.7),
              showControls: true,
              dotSize: 8.0,
              onStepChanged: _onStepChanged,
              controller: _scrollController,
            ),
          ),
      ],
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
