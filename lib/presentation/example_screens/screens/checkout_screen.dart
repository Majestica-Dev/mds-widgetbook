import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        Text(
          "Checkout",
          style: t.textTheme.titleLargeBold.copyWith(
            color: t.colors.neutralHighContent,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(t.spacing.x4),
          decoration: BoxDecoration(
            color: t.colors.surface,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Plan',
                    style: t.textTheme.bodySRegular.copyWith(
                      color: t.colors.neutralMedContent,
                    ),
                  ),
                  Text(
                    'Metal Monthly • S\$19.99',
                    style: t.textTheme.bodyMRegular.copyWith(
                      color: t.colors.neutralHighContent,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Card',
                    style: t.textTheme.bodySRegular.copyWith(
                      color: t.colors.neutralMedContent,
                    ),
                  ),
                  Text(
                    'Metal Space Gray • No-fee',
                    style: t.textTheme.bodyMRegular.copyWith(
                      color: t.colors.neutralHighContent,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Card delivery',
                    style: t.textTheme.bodySRegular.copyWith(
                      color: t.colors.neutralMedContent,
                    ),
                  ),
                  Text(
                    'Express • No-fee',
                    style: t.textTheme.bodyMRegular.copyWith(
                      color: t.colors.neutralHighContent,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Container(
          padding: EdgeInsets.all(t.spacing.x4),
          decoration: BoxDecoration(
            color: t.colors.surface,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Card',
                    style: t.textTheme.bodySRegular.copyWith(
                      color: t.colors.neutralMedContent,
                    ),
                  ),
                  Text(
                    'Metal Space Gray • No-fee',
                    style: t.textTheme.bodyMRegular.copyWith(
                      color: t.colors.neutralHighContent,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Add money to spend later',
                    style: t.textTheme.bodySRegular.copyWith(
                      color: t.colors.neutralMedContent,
                    ),
                  ),
                  Text(
                    'S\$5',
                    style: t.textTheme.bodyMRegular.copyWith(
                      color: t.colors.neutralHighContent,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 28),
              const MDSDivider(
                contrast: DividerContrast.low,
              ),
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryButton(
                    onPressed: () {},
                    text: '\$5',
                    buttonSize: MDSButtonSize.S,
                  ),
                  SecondaryButton(
                    onPressed: () {},
                    text: '\$10',
                    buttonSize: MDSButtonSize.S,
                  ),
                  SecondaryButton(
                    onPressed: () {},
                    text: '\$15',
                    buttonSize: MDSButtonSize.S,
                  ),
                  SecondaryButton(
                    onPressed: () {},
                    text: '\$20',
                    buttonSize: MDSButtonSize.S,
                  ),
                  SecondaryButton(
                    onPressed: () {},
                    text: '\$25',
                    buttonSize: MDSButtonSize.S,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        MDSTextField(
          label: "Your name",
          hintText: "Example Name",
        ),
        const Spacer(),
        Row(
          children: [
            Expanded(
              child: PrimaryButton(
                buttonSize: MDSButtonSize.L,
                onPressed: () {},
                text: "Pay",
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
