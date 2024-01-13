import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whm_places/presentation/common/constants/assets_paths.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';
import 'package:whm_places/presentation/common/widgets.dart';
import 'package:whm_places/presentation/theme/extensions/extensions.dart';

@RoutePage()
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final aboutScreenTheme = AboutScreenTheme.of(context);
    final whmUrl = Uri.parse('https://www.wimhofmethod.com/');

    return Scaffold(
      appBar: WhmAppBar(
        text: 'about'.tr(),
      ),
      body: Padding(
        padding: aboutScreenTheme.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HBox(aboutScreenTheme.heightBoxLarge),
            Text(
              'aboutScreenContent'.tr(),
              style: context.textTheme.detail(context).copyWith(
                    color: aboutScreenTheme.contentTextColor,
                  ),
            ),
            HBox(aboutScreenTheme.heightBoxLarge),
            Text(
              'designAndDevelopment'.tr(),
              style: context.textTheme.title2(context),
            ),
            HBox(aboutScreenTheme.heightBoxMedium),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: aboutScreenTheme.logoWidth,
                  height: aboutScreenTheme.logoHeight,
                  child: SvgPicture.asset(AssetsPaths.whmLogo),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HBox(aboutScreenTheme.heightBoxSmall),
                    Text(
                      'byWhmServices'.tr(),
                      style: context.textTheme.detail(context),
                      overflow: TextOverflow.ellipsis,
                      maxLines: aboutScreenTheme.textMaxLines,
                    ),
                    GestureDetector(
                      onTap: () {
                        launchUrl(whmUrl);
                      },
                      child: Text(
                        'whmLinkText'.tr(),
                        style: context.textTheme
                            .detail(context)
                            .copyWith(color: aboutScreenTheme.wimLinkTextColor),
                        maxLines: aboutScreenTheme.textMaxLines,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
