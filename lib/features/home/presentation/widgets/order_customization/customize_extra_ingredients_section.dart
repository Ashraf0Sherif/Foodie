import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';
import 'package:foodie/features/home/presentation/widgets/order_customization/custom_ingredient_check_box.dart';

import '../../../../../core/theming/styles.dart';
import '../../../../../generated/l10n.dart';
import '../../../../cart/logic/cart_cubit/cart_cubit.dart';

class CustomizeExtraIngredientsSection extends StatelessWidget {
  const CustomizeExtraIngredientsSection(
      {super.key,
      required this.foodItem,
      required this.onIngredientChanged,
      this.isReceipt = false});

  final FoodItem foodItem;
  final VoidCallback onIngredientChanged;
  final bool isReceipt;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        S.of(context).extraIngredients,
        style: FontStyles.font16BlackBold,
      ),
      for (int i = 0; i < foodItem.extraIngredients.length; i++)
        Row(
          children: [
            Text(
              foodItem.extraIngredients[i].title,
              style: FontStyles.font18PassiveRegular,
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  foodItem.extraIngredients[i].price,
                  style: FontStyles.font14PassiveRegular,
                ),
                Text(
                  S.of(context).egp,
                  style: FontStyles.font12PassiveRegular,
                ),
              ],
            ),
            if (!isReceipt)
              CustomIngredientCheckBox(
                ingredient: foodItem.extraIngredients[i],
                onChanged: (bool value) {
                  if (value) {
                    foodItem.totalPrice +=
                        int.parse(foodItem.extraIngredients[i].price);
                  } else {
                    foodItem.totalPrice -=
                        int.parse(foodItem.extraIngredients[i].price);
                  }
                  context.read<CartCubit>().updateCheckoutPrice();
                  onIngredientChanged();
                },
              )
          ],
        ),
    ]);
  }
}
