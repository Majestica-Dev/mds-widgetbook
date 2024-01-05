import 'package:flutter/material.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool tv1 = true;
  bool tv2 = false;

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        Text(
          "Settings",
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PhosphorIcon(
                    PhosphorIcons.palette(
                      PhosphorIconsStyle.fill,
                    ),
                    color: t.colors.primaryHighContent,
                    size: 28,
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Theme",
                        style: t.textTheme.bodyMRegular.copyWith(
                          color: t.colors.neutralHighContent,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "System • Default",
                        style: t.textTheme.bodySRegular.copyWith(
                          color: t.colors.neutralMedContent,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 28),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PhosphorIcon(
                    PhosphorIcons.appleLogo(
                      PhosphorIconsStyle.fill,
                    ),
                    color: t.colors.primaryHighContent,
                    size: 28,
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "App icon",
                        style: t.textTheme.bodyMRegular.copyWith(
                          color: t.colors.neutralHighContent,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "System • Default",
                        style: t.textTheme.bodySRegular.copyWith(
                          color: t.colors.neutralMedContent,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 28),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PhosphorIcon(
                    PhosphorIcons.globeHemisphereEast(
                      PhosphorIconsStyle.fill,
                    ),
                    color: t.colors.primaryHighContent,
                    size: 28,
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Language",
                        style: t.textTheme.bodyMRegular.copyWith(
                          color: t.colors.neutralHighContent,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "System • Default",
                        style: t.textTheme.bodySRegular.copyWith(
                          color: t.colors.neutralMedContent,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 28),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PhosphorIcon(
                    PhosphorIcons.deviceMobileCamera(
                      PhosphorIconsStyle.fill,
                    ),
                    color: t.colors.primaryHighContent,
                    size: 28,
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Theme",
                        style: t.textTheme.bodyMRegular.copyWith(
                          color: t.colors.neutralHighContent,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "System • Default",
                        style: t.textTheme.bodySRegular.copyWith(
                          color: t.colors.neutralMedContent,
                        ),
                      ),
                    ],
                  )
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PhosphorIcon(
                    PhosphorIcons.sparkle(
                      PhosphorIconsStyle.fill,
                    ),
                    color: t.colors.primaryHighContent,
                    size: 28,
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Holiday animations",
                        style: t.textTheme.bodyMRegular.copyWith(
                          color: t.colors.neutralHighContent,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "System • Default",
                        style: t.textTheme.bodySRegular.copyWith(
                          color: t.colors.neutralMedContent,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  MDSToggle(
                    value: tv1,
                    onChanged: (value) {
                      setState(() {
                        tv1 = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 28),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PhosphorIcon(
                    PhosphorIcons.slideshow(
                      PhosphorIconsStyle.fill,
                    ),
                    color: t.colors.primaryHighContent,
                    size: 28,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    "Background animation",
                    style: t.textTheme.bodyMRegular.copyWith(
                      color: t.colors.neutralHighContent,
                    ),
                  ),
                  const Spacer(),
                  MDSToggle(
                    value: tv2,
                    onChanged: (value) {
                      setState(() {
                        tv2 = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
