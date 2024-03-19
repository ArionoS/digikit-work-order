// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class EmbossedTextFormField extends StatelessWidget {
  const EmbossedTextFormField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.onSuffixIconPressed,
  });

  final String hintText;
  final Icon prefixIcon;
  final void Function()? onSuffixIconPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          const BoxShadow(
              offset: Offset(-2, -2), color: Colors.black38, blurRadius: 20),
          BoxShadow(
              offset: const Offset(2, 2),
              color: Colors.white.withOpacity(0.85),
              blurRadius: 20)
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: onSuffixIconPressed != null
              ? IconButton(
                  onPressed: onSuffixIconPressed,
                  icon: const Icon(Icons.remove_red_eye_outlined,
                      color: Colors.grey),
                )
              : null,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
