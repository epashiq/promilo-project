import 'package:flutter/material.dart';
import 'package:promilo_project/core/theme/theme.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Search',
          prefixIcon: const Icon(
            Icons.search,
            color: AppTheme.text,
          ),
          suffixIcon: const Icon(
            Icons.mic_outlined,
            color: AppTheme.text,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppTheme.text, width: 1.5),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppTheme.text, width: 1.5),
          ),
        ),
      ),
    );
  }
}