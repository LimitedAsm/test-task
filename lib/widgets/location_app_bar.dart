import 'package:flutter/material.dart';
import 'package:test_task/utils/app_icon.dart';
import 'package:test_task/widgets/custom_app_bar.dart';

class LocationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LocationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: _buildLocation(context),
    );
  }

  Widget _buildLocation(context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4),
          child: AppIcons.location,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Санкт-Петербург'),
            Text(
              '12 Августа, 2023',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.5)),
            ),
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
