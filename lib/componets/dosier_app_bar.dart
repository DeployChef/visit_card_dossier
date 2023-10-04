import 'package:flutter/material.dart';

class DossierAppBar extends StatelessWidget implements PreferredSizeWidget {
  DossierAppBar({
    super.key,
    required String dossierNumber,
  }) : _dossierNumber = dossierNumber;

  final String _dossierNumber;

  @override
  AppBar build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Dossier #",
            style: theme.textTheme.bodyMedium!.copyWith(fontSize: 20),
          ),
          Transform.rotate(
            angle: 0.06,
            child: Text(
              _dossierNumber,
              style: theme.textTheme.bodyMedium!.copyWith(
                letterSpacing: 3,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
      elevation: 0,
      backgroundColor: Colors.grey.withOpacity(0.2),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
