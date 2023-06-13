import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

  Widget _buildLocation(BuildContext context) {
    final now = DateTime.now();
    final formatter = DateFormat('dd MMMM, y', 'ru');
    final formattedDate = formatter.format(now);

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4),
          child: AppIcons.location,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Санкт-Петербург'),
            Text(
              formattedDate,
              style: Theme
                  .of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(
                  color: Theme
                      .of(context)
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
