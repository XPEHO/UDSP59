import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udsp59/features/tips_card.dart';
import 'package:udsp59/state/providers/tips_providers.dart';

class TipsCardSwitcher extends ConsumerWidget {
  const TipsCardSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomTip = ref.watch(randomTipProvider);

    return InkWell(
      onTap: () {
        debugPrint('User want to change the tips');
        ref.invalidate(randomTipProvider);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
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
        child: TipsCard(tips: randomTip),
      ),
    );
  }
}
