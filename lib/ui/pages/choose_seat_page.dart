import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/checkout_page.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 40),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        padding: const EdgeInsets.only(top: 50),
        child: Row(
          children: [
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(right: 6),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_available.png'))),
            ),
            Text(
              'Available',
              style: blackTextStyle,
            ),
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(left: 10, right: 6),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_selected.png'))),
            ),
            Text(
              'Selected',
              style: blackTextStyle,
            ),
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(left: 10, right: 6),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_unavailable.png'))),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle,
            )
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: kWhiteColor),
        child: Column(children: [
          // NOTE: SEAT INDICATORS
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  )),
              SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'B',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  )),
              SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  )),
              SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'C',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  )),
              SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'D',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ))
            ],
          ),
          // NOTE: SEAT 1
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(
                  status: 2,
                ),
                const SeatItem(
                  status: 2,
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                      child: Text(
                    '1',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  )),
                ),
                const SeatItem(
                  status: 0,
                ),
                const SeatItem(
                  status: 2,
                )
              ],
            ),
          ),
          // NOTE: SEAT 2
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(
                  status: 0,
                ),
                const SeatItem(
                  status: 0,
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                      child: Text(
                    '2',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  )),
                ),
                const SeatItem(
                  status: 0,
                ),
                const SeatItem(
                  status: 2,
                )
              ],
            ),
          ),
          // NOTE: SEAT 3
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(
                  status: 1,
                ),
                const SeatItem(
                  status: 1,
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                      child: Text(
                    '3',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  )),
                ),
                const SeatItem(
                  status: 0,
                ),
                const SeatItem(
                  status: 0,
                )
              ],
            ),
          ),
          // NOTE: SEAT 4
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(
                  status: 0,
                ),
                const SeatItem(
                  status: 2,
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                      child: Text(
                    '4',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  )),
                ),
                const SeatItem(
                  status: 0,
                ),
                const SeatItem(
                  status: 0,
                )
              ],
            ),
          ),
          // NOTE: SEAT 5
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(
                  status: 0,
                ),
                const SeatItem(
                  status: 0,
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                      child: Text(
                    '5',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  )),
                ),
                const SeatItem(
                  status: 2,
                ),
                const SeatItem(
                  status: 0,
                )
              ],
            ),
          ),

          // NOTE: YOUR SEAT
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your seat',
                  style: greyTextStyle.copyWith(fontWeight: light),
                ),
                Text(
                  'A3, B3',
                  style:
                      blackTextStyle.copyWith(fontWeight: medium, fontSize: 16),
                )
              ],
            ),
          ),

          // NOTE: TOTAL
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: greyTextStyle.copyWith(fontWeight: light),
                ),
                Text(
                  'IDR 540.000.000',
                  style: blackTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 16, color: kPrimaryColor),
                )
              ],
            ),
          )
        ]),
      );
    }

    Widget checkoutButton() {
      return CustomButton(
        title: 'Continue to Checkout',
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CheckoutPage()));
        },
        margin: const EdgeInsets.only(top: 30, bottom: 46),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [title(), seatStatus(), selectSeat(), checkoutButton()],
      ),
    );
  }
}
