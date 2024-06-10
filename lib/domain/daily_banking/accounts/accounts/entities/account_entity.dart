import 'package:flutter/material.dart';

class AccountEntity {
  AccountEntity({
    required this.name,
    required this.icon,
    required this.iconColor,
    required this.iconBackgroundColor,
  });

  final String name;
  final String icon;
  final Color iconColor;
  final Color iconBackgroundColor;
}
