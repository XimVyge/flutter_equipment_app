import 'package:flutter/material.dart';
import 'package:flutter_equipment_app/shared/widgets/center_app_bar.dart';

import '../../../domain/models/equipment.dart';

class EquipmentDetailView extends StatelessWidget {
  const EquipmentDetailView(this.equipment, {super.key});

  final Equipment equipment;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CenterAppBar(equipment.code, context),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [Image.network(equipment.image),
                const SizedBox(height: 16),
                Text(equipment.description,
                    style: Theme.of(context).textTheme.headlineMedium),
                Text(equipment.specs,
                    style: Theme.of(context).textTheme.bodyLarge),],
            )
          ],
        ),
      ),
    );
  }
}