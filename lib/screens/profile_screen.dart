import 'package:booking_ticket_app/utils/app_styles.dart';
import 'package:booking_ticket_app/widgets/miles_and_received.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/img_1.png'),
                  ),
                ),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLineStyle2,
                  ),
                  const Gap(3),
                  Text(
                    'New-York',
                    style: Styles.headLineStyle4,
                  ),
                  const Gap(10),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFEF4F3),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const Gap(5),
                        const Text(
                          'Premium status',
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w700),
                        ),
                        const Gap(5),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('You tapped Edit');
                    },
                    child: Text('Edit',
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w300)),
                  ),
                ],
              ),
            ],
          ),
          const Gap(20),
          Stack(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(18)),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                      ),
                    ),
                    const Gap(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You've got a new award",
                            style: Styles.headLineStyle3.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text('You have 150 flights in a year',
                            style: Styles.textStyle.copyWith(
                                color:
                                    const Color.fromARGB(208, 240, 240, 240)))
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -40,
                top: -50,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: 18, color: const Color(0xFF264CD2)),
                  ),
                ),
              ),
            ],
          ),
          const Gap(20),
          Text(
            'Accumulated miles',
            style: Styles.headLineStyle2,
          ),
          const Gap(30),
          Center(
            child: Text(
              '192802',
              style: Styles.headLineStyle1.copyWith(fontSize: 40),
            ),
          ),
          const Gap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Miles accrued', style: Styles.headLineStyle4),
              Text('23 May 2021', style: Styles.headLineStyle4),
            ],
          ),
          const Gap(20),
          const MilesAndReceived(miles: '23042', receivedFrom: 'Airline CO'),
          const Gap(20),
          const MilesAndReceived(miles: '24', receivedFrom: "McDonal's"),
          const Gap(20),
          const MilesAndReceived(miles: '52 340', receivedFrom: 'Exuma'),
          const Gap(30),
          Center(
            child: Text(
              'How to get more miles',
              style: Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
