
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      child: Text(
        'Login',
        style: AppTextStyles.semibold16.copyWith(
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
      onPressed: () {},
    );
  }
}
