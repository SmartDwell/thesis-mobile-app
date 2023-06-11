import 'package:flutter/material.dart';

import '../../../../../core/widgets/bottom_sheep/thesis_bottom_sheep_header.dart';
import '../../../../../core/widgets/thesis/thesis_bottom_sheep.dart';
import '../../../../theme/theme_colors.dart';
import '../../contracts/incident_point_dto/incident_point_dto.dart';

/// BottomSheep для добавления комментария к заявке
class SelectIncidentPointSheep {
  static Future<void> show(
    BuildContext context, {
    required String title,
    required List<IncidentPointDto> incidentPoints,
    required void Function(IncidentPointDto incidentPoint) onSelected,
  }) async {
    await ThesisBottomSheep.showModalAsync(
      context,
      expand: false,
      header: ThesisBottomSheepHeader(title: title),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(incidentPoints.length, (index) {
            final incidentPoint = incidentPoints[index];
            return GestureDetector(
              onTap: () => onSelected(incidentPoint),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        incidentPoint.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: kGray1Color,
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
