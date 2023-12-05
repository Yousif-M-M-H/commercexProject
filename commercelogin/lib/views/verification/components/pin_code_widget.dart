import 'package:commercelogin/views/verification/components/dot_container.dart';
import 'package:flutter/material.dart';

class PinCodeRow extends StatelessWidget {
  const PinCodeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        DotContainer(),
        DotContainer(),
        DotContainer(),
        DotContainer(),
      ],
    );
  }
}
