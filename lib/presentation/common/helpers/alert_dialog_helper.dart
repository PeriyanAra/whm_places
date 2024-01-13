import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';

class AlertDialogHelper {
  static Future<T?> showAlertDialog<T>(
    BuildContext context, {
    bool barrierDismissible = false,
    required String message,
  }) async {
    return showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return AlertDialog(
          backgroundColor: context.colorTheme.background,
          title: Text(
            'info'.tr(),
            style: context.textTheme.title1Medium(
              context,
            ),
            textAlign: TextAlign.start,
          ),
          content: Text(
            message,
            style: context.textTheme.detail(context).copyWith(fontSize: 15.0),
          ),
          actions: [
            TextButton(
              onPressed: () => context.router.pop(),
              child: Text(
                'okButtonText'.tr(),
                style: context.textTheme.title2(context).copyWith(
                      color: context.colorTheme.secondary,
                    ),
              ),
            ),
          ],
        );
      },
    );
  }
}
