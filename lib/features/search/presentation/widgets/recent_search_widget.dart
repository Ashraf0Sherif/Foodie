import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class RecentSearchWidget extends StatelessWidget {
  const RecentSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(16),
        Row(
          children: [
            Text(
              "Recent",
              style: FontStyles.font13BlackBold,
            ),
            const Spacer(),
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: const Size(0, 0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                foregroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              onPressed: () {},
              child: Text(
                'CLEAR ALL',
                style: FontStyles.font13CustomRedColorBold,
              ),
            )
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(top: 17.h),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        'Pizza',
                        style: FontStyles.font16BlackMedium,
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: 5,
          ),
        )
      ],
    );
  }
}