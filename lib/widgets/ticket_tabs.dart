import 'package:booking_ticket_app/utils/app_layout.dart';
import 'package:flutter/material.dart';

class TicketTabs extends StatelessWidget {
  final String leftText;
  final String rightText;
  const TicketTabs({Key? key, required this.leftText, required this.rightText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFF4F6F0),
        ),
        child: Row(
          children: [
            Container(
              width: size.width * .43,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(50),
                ),
              ),
              child: Center(child: Text(leftText)),
            ),
            Container(
              width: size.width * .43,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(50),
                ),
              ),
              child: Center(child: Text(rightText)),
            ),
          ],
        ),
      ),
    );
  }
}
