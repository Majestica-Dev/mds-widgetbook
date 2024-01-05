import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        Text(
          "Accounts",
          style: t.textTheme.titleLargeBold.copyWith(
            color: t.colors.neutralHighContent,
          ),
        ),
        const SizedBox(height: 20),
        MDSSearchField(
          key: UniqueKey(),
        ),
        const SizedBox(height: 12),
        MDSTabBar(
          activeTabIndex: tabBarIndex,
          tabs: const [
            MDSTab(
              child: Text("Accounts"),
            ),
            MDSTab(
              child: Text("Cards"),
            ),
            MDSTab(
              child: Text("Stocks "),
            ),
            MDSTab(
              child: Text("Category"),
            ),
          ],
          onChanged: (v) {
            setState(() {
              tabBarIndex = v;
            });
          },
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '\$144',
                        style: t.textTheme.titleLargeBold.copyWith(
                          color: t.colors.neutralHighContent,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'United States Dollar',
                        style: t.textTheme.bodySRegular.copyWith(
                          color: t.colors.neutralHighContent,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/us.svg',
                    width: 44,
                    height: 44,
                  ),
                ],
              ),
              SizedBox(height: t.spacing.x7),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: t.spacing.x8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PrimaryCircleButton(
                      onPressed: () {},
                      child: PhosphorIcon(
                        PhosphorIcons.power(PhosphorIconsStyle.bold),
                      ),
                    ),
                    SecondaryCircleButton(
                      onPressed: () {},
                      child: PhosphorIcon(
                        PhosphorIcons.plus(
                          PhosphorIconsStyle.bold,
                        ),
                      ),
                    ),
                    SecondaryCircleButton(
                      onPressed: () {},
                      child: PhosphorIcon(
                        PhosphorIcons.user(
                          PhosphorIconsStyle.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
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
                children: [
                  Container(
                    padding: EdgeInsets.all(t.spacing.x4),
                    decoration: BoxDecoration(
                      color: t.colors.primaryHighContainer,
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: PhosphorIcon(
                      PhosphorIcons.money(
                        PhosphorIconsStyle.fill,
                      ),
                      size: 24,
                      color: t.colors.highContainerContent,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Cash balance",
                        style: t.textTheme.bodyMBold.copyWith(
                          color: t.colors.neutralHighContent,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "1 account",
                        style: t.textTheme.bodySRegular.copyWith(
                          color: t.colors.neutralMedContent,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 90,
                    child: SecondaryButton(
                      text: "Add",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(t.spacing.x4),
                    decoration: BoxDecoration(
                      color: t.utilityColors.green,
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: PhosphorIcon(
                      PhosphorIcons.linkSimple(
                        PhosphorIconsStyle.bold,
                      ),
                      size: 24,
                      color: t.colors.highContainerContent,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Cash balance",
                        style: t.textTheme.bodyMBold.copyWith(
                          color: t.colors.neutralHighContent,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Link etxernal account",
                        style: t.textTheme.bodySRegular.copyWith(
                          color: t.colors.neutralMedContent,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 90,
                    child: SecondaryButton(
                      text: "Add",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(t.spacing.x4),
                    decoration: BoxDecoration(
                      color: t.colors.neutralMedContainer,
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: PhosphorIcon(
                      PhosphorIcons.linkSimple(
                        PhosphorIconsStyle.bold,
                      ),
                      size: 24,
                      color: t.colors.highContainerContent,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Cash balance",
                        style: t.textTheme.bodyMBold.copyWith(
                          color: t.colors.neutralHighContent,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Link etxernal account",
                        style: t.textTheme.bodySRegular.copyWith(
                          color: t.colors.neutralMedContent,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 90,
                    child: SecondaryButton(
                      text: "Link",
                      disabled: true,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
