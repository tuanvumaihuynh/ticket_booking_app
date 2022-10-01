import 'package:booking_ticket_app/screens/ticket_view.dart';
import 'package:booking_ticket_app/utils/app_info_lists.dart';
import 'package:booking_ticket_app/utils/app_styles.dart';
import 'package:booking_ticket_app/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text(
            'Tickets',
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const Gap(20),
          const TicketTabs(leftText: 'Upcoming', rightText: 'Previous'),
          const Gap(20),
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              children: [
                TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                  topCircular: true,
                  bottomCircular: null,
                ),
                const Gap(1),
                /*
                  Passenger, Passport
                 */
                Container(
                  padding: const EdgeInsets.only(
                      right: 16, left: 16, top: 15, bottom: 10),
                  margin: const EdgeInsets.only(right: 16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Flutter DB',
                              style: Styles.headLineStyle3
                                  .copyWith(color: const Color(0xFF3b3b3b))),
                          Text('5221 364869',
                              style: Styles.headLineStyle3
                                  .copyWith(color: const Color(0xFF3b3b3b))),
                        ],
                      ),
                      const Gap(3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Passenger', style: Styles.headLineStyle4),
                          Text('Passport', style: Styles.headLineStyle4),
                        ],
                      ),
                    ],
                  ),
                ),
                /*
                  Draw -------------------
                 */
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  color: Colors.white,
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                  (constraints.constrainWidth() / 15).floor(),
                                  (index) => SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /*
                  Number E-ticket, Booking care
                 */
                Container(
                  padding: const EdgeInsets.only(
                      right: 16, left: 16, top: 10, bottom: 10),
                  margin: const EdgeInsets.only(right: 16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('364738 28274478',
                              style: Styles.headLineStyle3
                                  .copyWith(color: const Color(0xFF3b3b3b))),
                          Text('B2SG28',
                              style: Styles.headLineStyle3
                                  .copyWith(color: const Color(0xFF3b3b3b))),
                        ],
                      ),
                      const Gap(3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Number of E-ticket',
                              style: Styles.headLineStyle4),
                          Text('Booking code', style: Styles.headLineStyle4),
                        ],
                      ),
                    ],
                  ),
                ),
                /*
                  Draw -------------------
                 */
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  color: Colors.white,
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                  (constraints.constrainWidth() / 15).floor(),
                                  (index) => SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /*
                  Visa section
                 */
                Container(
                  padding: const EdgeInsets.only(
                      right: 16, left: 16, top: 10, bottom: 10),
                  margin: const EdgeInsets.only(right: 16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/visa.png',
                                scale: 11,
                              ),
                              Text(' *** 2462',
                                  style: Styles.headLineStyle3.copyWith(
                                      color: const Color(0xFF3b3b3b))),
                            ],
                          ),
                          Text('\$249.99',
                              style: Styles.headLineStyle3
                                  .copyWith(color: const Color(0xFF3b3b3b))),
                        ],
                      ),
                      const Gap(3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Payment method', style: Styles.headLineStyle4),
                          Text('Price', style: Styles.headLineStyle4),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Gap(1),
          /*
            Barcode
           */
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21)),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: BarcodeWidget(
                  barcode: Barcode.code128(),
                  data: 'https://github.com/raus98',
                  drawText: false,
                  color: Styles.textColor,
                  width: double.infinity,
                  height: 70,
                ),
              ),
            ),
          ),
          const Gap(40),
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: TicketView(
                ticket: ticketList[0],
                isColor: null,
                topCircular: true,
                bottomCircular: true),
          )
        ],
      ),
    );
  }
}
