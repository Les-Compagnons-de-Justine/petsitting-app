import 'package:flutter/material.dart';

class UserInfoText extends StatelessWidget {
  final String firstname;
  final String lastname;
  final String email;

  const UserInfoText({
    super.key,
    required this.firstname,
    required this.lastname,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: '$firstname $lastname',
            style: const TextStyle(fontSize: 14),
          ),
          const TextSpan(text: " - "),
          TextSpan(
            text: email,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
