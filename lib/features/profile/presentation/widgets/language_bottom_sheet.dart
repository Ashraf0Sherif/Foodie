import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/helpers/shared_pref_keys.dart';
import 'package:foodie/core/logic/language_cubit/language_cubit.dart';
import 'package:foodie/core/theming/colors.dart';
import 'package:foodie/core/widgets/custom_elevated_button.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/theming/ui_constants.dart';
import '../../../../generated/l10n.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  String _selectedLanguage = currentLanguage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultHorizontalPadding),
        child: Column(
          children: [
            verticalSpace(20),
            Row(
              children: [
                Text(
                  S.of(context).selectLanguage, // Localized
                  style: FontStyles.font24BlackMedium,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  S.of(context).whatLanguageDoYouPrefer, // Localized
                  style: FontStyles.font18GreyMedium,
                ),
              ],
            ),
            verticalSpace(10),
            // English Option
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: ColorsStyles.kPrimaryColor,
                  child: Text('EN'),
                ),
                horizontalSpace(10),
                Text(
                  S.of(context).english, // Localized
                  style: FontStyles.font16BlackMedium,
                ),
                const Spacer(),
                Radio(
                  value: 'en',
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                ),
              ],
            ),
            verticalSpace(10),
            // Arabic Option
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text('AR'),
                ),
                horizontalSpace(10),
                Text(
                  S.of(context).arabic, // Localized
                  style: FontStyles.font16BlackMedium,
                ),
                const Spacer(),
                Radio(
                  value: 'ar',
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                ),
              ],
            ),
            verticalSpace(30),
            CustomElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                context
                    .read<LanguageCubit>()
                    .changeLanguage(language: _selectedLanguage);
              },
              text: S.of(context).confirm,
              gradient: ColorsStyles.kButtonGradient,
            ),
          ],
        ),
      ),
    );
  }
}
