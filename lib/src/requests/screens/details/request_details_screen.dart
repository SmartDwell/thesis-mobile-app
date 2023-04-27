import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/widgets/thesis/thesis_images_carousel.dart';
import '../../../../core/constants.dart';
import '../../../../core/helpers/dio_helper.dart';
import '../../../../theme/theme_colors.dart';
import '../../../../theme/theme_constants.dart';
import '../../contracts/request_dto/request_dto.dart';
import '../../widgets/request_state_card.dart';
import 'comments/request_comments_widget.dart';

class RequestDetailsScreen extends StatelessWidget {
  const RequestDetailsScreen({
    super.key,
    required this.requestDto,
  });

  final RequestDto requestDto;

  @override
  Widget build(BuildContext context) {
    final themeData = AdaptiveTheme.of(context).theme;
    return ProgressHUD(
      backgroundColor: themeData.scaffoldBackgroundColor,
      borderColor: themeData.textTheme.headlineLarge!.color!,
      indicatorColor: kPrimaryLightColor,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Заявка №${requestDto.number}",
            style: AdaptiveTheme.of(context)
                .theme
                .textTheme
                .titleMedium
                ?.copyWith(fontSize: 18),
          ),
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ThesisImagesCarousel(
                images: requestDto.images
                    .map((imageId) => "${DioHelper.baseUrl}/images/$imageId")
                    .toList(),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: kThemeDefaultPaddingHorizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RequestStateCard(
                          stateName: requestDto.stateName,
                          stateColor: requestDto.stateColor,
                          showInfo: true,
                        ),
                        Text(
                          kDateFormatter.format(requestDto.created),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      requestDto.title,
                      style: AdaptiveTheme.of(context)
                          .theme
                          .textTheme
                          .headlineMedium,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/images/icons/geomark.svg",
                          width: 16,
                          height: 16,
                        ),
                        const SizedBox(width: 6),
                        Flexible(
                          child: Text(
                            requestDto.incidentPointListAsString,
                            style: AdaptiveTheme.of(context)
                                .theme
                                .textTheme
                                .titleSmall,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      requestDto.description,
                      style:
                          AdaptiveTheme.of(context).theme.textTheme.titleMedium,
                    ),
                    const SizedBox(height: 20),
                    RequestCommentsWidget(requestId: requestDto.id),
                    const SizedBox(height: 64),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
