import 'package:flutter/material.dart';
import 'package:udsp59/styles/text_style.dart';

class ModuleAccordionElement extends StatefulWidget {
  final List<String> modulePart;
  final int index;

  const ModuleAccordionElement({
    super.key,
    required this.modulePart,
    required this.index,
  });

  @override
  State<ModuleAccordionElement> createState() => _ModuleAccordionElementState();
}

class _ModuleAccordionElementState extends State<ModuleAccordionElement>
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
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  child: Text(widget.modulePart[0],
                      style: textStyleParagraphImportant(context)),
                ),
                if (widget.modulePart.length > 1)
                  Icon(isOpen ? Icons.expand_less : Icons.expand_more),
              ],
            ),
            if (widget.modulePart.length > 1)
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: widget.modulePart
                          .sublist(1)
                          .map(
                            (moduleSubpart) => Text(
                              "•   $moduleSubpart",
                              style: textStyleParagraph(context),
                              textAlign: TextAlign.start,
                            ),
                          )
                          .toList(),
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
