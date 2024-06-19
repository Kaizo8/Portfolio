import 'package:flutter/material.dart';

class KaizoLogo extends StatelessWidget {
  const KaizoLogo({super.key,this.onTap,});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset('assets/images/sasukecpfp.png'),
    );
  }
}
