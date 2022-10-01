import 'package:booking_ticket_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MilesAndReceived extends StatelessWidget {
  final String miles;
  final String receivedFrom;
  const MilesAndReceived(
      {Key? key, required this.miles, required this.receivedFrom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              miles,
              style: Styles.headLineStyle3.copyWith(color: Styles.textColor),
            ),
            const Gap(5),
            Text(
              'Miles',
              style: Styles.headLineStyle4,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              receivedFrom,
              style: Styles.headLineStyle3.copyWith(color: Styles.textColor),
            ),
            const Gap(5),
            Text(
              'Received from',
              style: Styles.headLineStyle4,
            )
          ],
        ),
      ],
    );
  }
}
