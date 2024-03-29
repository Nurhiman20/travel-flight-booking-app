import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  // NOTE: 0. Available, 1. Selected, 2. Unvailable
  final int status;

  const SeatItem({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnvailableColor;
        default:
          return kUnvailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnvailableColor;
        default:
          return kUnvailableColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return const SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(fontWeight: semiBold),
            ),
          );
        case 2:
          return const SizedBox();
        default:
          return const SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: borderColor(), width: 2)),
      child: child(),
    );
  }
}
