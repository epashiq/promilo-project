import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:promilo_project/core/theme/theme.dart';


class ButtonWidget extends ConsumerWidget {
  final GlobalKey<FormState> formKey;
  final String email;
  final String password;
  final Color backgroundColor;
  const ButtonWidget(
      {super.key,
      required this.formKey,
      required this.email,
      required this.password,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 60),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: AppTheme.button, width: 3),
          )),
      onPressed: () {
        
      },
      child: const Text(
        'Submit',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}