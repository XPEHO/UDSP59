import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
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

  @override
  void initState() {
    super.initState();
    debugPrint(widget.tips.toString());
    if (widget.tips.isNotEmpty) {
      state1 = Random().nextInt(widget.tips.length);
      if (widget.tips.length >= 2) {
        state2 = state1 == widget.tips.length - 1 ? 0 : state1 + 1;
      } else {
        state2 = state1;
      }
    }
    debugPrint('state1: $state1');
    debugPrint('state2: $state2');
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint('User want to change the tips');
        setState(() {
          if (widget.tips.isNotEmpty) {
            state1 = state2;
            if (widget.tips.length >= 2) {
              state2 = state1 == widget.tips.length - 1 ? 0 : state1 + 1;
            } else {
              state2 = state1;
            }
          }
          debugPrint('state1: $state1');
          debugPrint('state2: $state2');
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
          firstChild: widget.tips.isNotEmpty
              ? TipsCard(tips: widget.tips[state1])
              : TipsCard(tips: tr("defaultTips")),
          secondChild: widget.tips.isNotEmpty
              ? TipsCard(tips: widget.tips[state2])
              : TipsCard(tips: tr("defaultTips")),
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
