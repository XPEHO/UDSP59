import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udsp59/features/tips_card.dart';
import 'package:udsp59/state/providers/tips_providers.dart';

class TipsCardSwitcher extends ConsumerStatefulWidget {
  const TipsCardSwitcher({Key? key}) : super(key: key);

  @override
  ConsumerState<TipsCardSwitcher> createState() => _TipsCardSwitcherState();
}

class _TipsCardSwitcherState extends ConsumerState<TipsCardSwitcher> {
  @override
  void initState() {
    super.initState();
    ref.read(tipsNotifierProvider.notifier).init();
  }

  @override
  Widget build(BuildContext context) {
    final tipsState = ref.watch(tipsNotifierProvider);

    return InkWell(
      onTap: () {
        debugPrint('User want to change the tips');
        ref.read(tipsNotifierProvider.notifier).goNext();
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
          firstChild: TipsCard(tips: tipsState),
          secondChild: TipsCard(
              tips: ref.watch(tipsNotifierProvider.notifier).getNext()),
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
