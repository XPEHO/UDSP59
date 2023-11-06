import 'dart:math';

import 'package:flutter/material.dart';
import 'package:udsp59/features/tips_card.dart';

class TipsCardSwitcher extends StatefulWidget {
  final List<String> tips;

  const TipsCardSwitcher({
    super.key,
    required this.tips,
  });

  @override
  State<TipsCardSwitcher> createState() => _TipsCardSwitcherState();
}

class _TipsCardSwitcherState extends State<TipsCardSwitcher> {
  var state1 = 0;
  var state2 = 1;
  var tipsText = '';

  @override
  void initState() {
    super.initState();
    debugPrint(widget.tips.toString());
    state1 = Random().nextInt(widget.tips.length);
    while (state2 == state1) {
      state2 = Random().nextInt(widget.tips.length);
    }
  }

  // This widget return a list of ModuleListElementWidget scrollable horizontally
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint('User want to change the tips');
        setState(() {
          state1 = Random().nextInt(widget.tips.length);
          while (state2 == state1) {
            state2 = Random().nextInt(widget.tips.length);
          }
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        constraints: const BoxConstraints(
          minHeight: 150,
        ),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: AnimatedCrossFade(
          firstChild: TipsCard(tips: widget.tips[state1]),
          secondChild: TipsCard(tips: widget.tips[state2]),
          crossFadeState: CrossFadeState.showFirst,
          duration: const Duration(milliseconds: 300),
          firstCurve: Curves.bounceOut,
          secondCurve: Curves.bounceIn,
          alignment: Alignment.center,
          layoutBuilder: (topChild, topChildKey, bottomChild, bottomChildKey) =>
              Center(
            child: topChild,
          ),
        ),
      ),
    );
  }
}
