import 'package:booking_ticket_app/utils/app_layout.dart';
import 'package:booking_ticket_app/utils/app_styles.dart';
import 'package:booking_ticket_app/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const Gap(20),
          FittedBox(
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
                    child: const Center(child: Text('Airline Tickets')),
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
                    child: const Center(child: Text('Hotels')),
                  ),
                ],
              ),
            ),
          ),
          const Gap(25),
          const AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          const Gap(15),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arival'),
          const Gap(25),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xD91130CE),
            ),
            child: Center(
                child: Text(
              'Find tickets',
              style: Styles.textStyle.copyWith(color: Colors.white),
            )),
          ),
          const Gap(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Upcoming Flights',
                style: Styles.headLineStyle2,
              ),
              InkWell(
                onTap: () {
                  print('View all upcoming flights');
                },
                child: Text(
                  'View all',
                  style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                ),
              ),
            ],
          ),
          const Gap(15),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.all(10),
                height: 330,
                width: size.width * 0.42,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('assets/images/sit.jpg')),
                      ),
                    ),
                    const Gap(10),
                    Text(
                      '20% discount on business class tickets from Airline On International',
                      style: Styles.textStyle,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 170,
                        width: size.width * 0.42,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headLineStyle2
                                  .copyWith(color: Colors.white),
                            ),
                            const Gap(10),
                            Text(
                              'Take the survey about our services and get a discount',
                              style: Styles.textStyle
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: const Color(0xFF189999))),
                        ),
                      )
                    ],
                  ),
                  const Gap(10),
                  Container(
                    height: 150,
                    width: size.width * .42,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEC6545),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take love',
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const Gap(15),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😂',
                                style: TextStyle(fontSize: 30),
                              ),
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 35),
                              ),
                              TextSpan(
                                text: '😎',
                                style: TextStyle(fontSize: 30),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
