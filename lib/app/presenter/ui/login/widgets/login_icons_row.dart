import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:flutter/material.dart';

class LoginIconsRow extends StatelessWidget {
  const LoginIconsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        InkWell(
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              AkarIcons.linkedin_box_fill,
              color: Color.fromRGBO(75, 14, 136, 1),
              size: 25,
            ),
          ),
        ),
        SizedBox(width: 15),
        InkWell(
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              AkarIcons.google_fill,
              color: Color.fromRGBO(75, 14, 136, 1),
              size: 30,
            ),
          ),
        ),
        SizedBox(width: 15),
        InkWell(
          child: Icon(
            AkarIcons.github_fill,
            color: Colors.white,
            size: 40,
          ),
        ),
      ],
    );
  }
}
