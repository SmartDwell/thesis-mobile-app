import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Компонент пустой страницы
class ThesisEmptyPage extends StatelessWidget {
  const ThesisEmptyPage({
    super.key,
    required this.iconPath,
    required this.title,
    required this.description,
  });

  final String iconPath;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(
            iconPath,
            color: Theme.of(context).textTheme.titleSmall?.color,
            width: 164,
            height: 164,
          ),
          const SizedBox(height: 20),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 22),
          Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
