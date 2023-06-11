import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/widgets/thesis/thesis_images_carousel.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/helpers/dio_helper.dart';
import '../../../../theme/theme_constants.dart';
import '../../../../theme/theme_extention.dart';
import '../../contracts/request_dto/request_dto.dart';
import '../../widgets/request_state_card.dart';
import 'comments/request_comments_widget.dart';
import 'request_statuses_sheep.dart';

/// Страница детальной информации заявки
class RequestDetailsScreen extends StatelessWidget {
  const RequestDetailsScreen({
    super.key,
    required this.requestDto,
  });

  final RequestDto requestDto;

  @override
  Widget build(BuildContext context) {
    final scaffoldState = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldState,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Заявка №${requestDto.number}",
          style: context.textTheme.headlineSmall,
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Visibility(
              visible: requestDto.images.isNotEmpty,
              child: ThesisImagesCarousel(
                images: requestDto.images
                    .map((imageId) => "${DioHelper.baseUrl}/images/$imageId")
                    .toList(),
              ),
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
                      Builder(builder: (newContext) {
                        return GestureDetector(
                          onTap: () => RequestStatusesSheep.show(
                            newContext,
                            requestId: requestDto.id,
                          ),
                          child: RequestStateCard(
                            stateName: requestDto.stateName,
                            stateColor: requestDto.stateColor,
                            showInfo: true,
                          ),
                        );
                      }),
                      Text(
                        kDateFormatter.format(requestDto.created.toLocal()),
                        style: context.textTheme.bodySmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    requestDto.title,
                    style: context.textTheme.headlineMedium,
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
                          requestDto.incidentPointFullName,
                          style: context.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    requestDto.description,
                    textAlign: TextAlign.justify,
                    style: context.textTheme.titleMedium,
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
    );
  }
}
