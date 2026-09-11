import 'package:flutter/material.dart';
import '../l10n/translations.dart';
import '../models/room.dart';
import '../widgets/contact_sheet.dart';
import '../widgets/placeholder_image.dart';
import '../widgets/site_scaffold.dart';

class RoomsPage extends StatelessWidget {
  const RoomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteScaffold(
      currentRoute: '/rooms',
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Text(
            context.t('roomsTitle'),
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(context.t('roomsSubtitle'), style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 24),
          LayoutBuilder(
            builder: (context, constraints) {
              final columns = constraints.maxWidth >= 900
                  ? 3
                  : constraints.maxWidth >= 600
                      ? 2
                      : 1;
              return GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: columns,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.85,
                children: [for (final room in defaultRooms) _RoomCard(room: room)],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _RoomCard extends StatelessWidget {
  final RoomType room;
  const _RoomCard({required this.room});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: scheme.outlineVariant),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PlaceholderImage(
            imageUrl: room.imageUrl,
            label: context.t(room.nameKey),
            icon: Icons.bed_outlined,
            width: double.infinity,
            height: 140,
          ),
          const SizedBox(height: 12),
          Text(
            context.t(room.nameKey),
            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            room.price != null
                ? '${room.price!.toStringAsFixed(0)} ${room.currency} ${context.t('perNight')}'
                : context.t('priceOnRequest'),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: scheme.primary),
          ),
          const Spacer(),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => showContactSheet(context),
              child: Text(context.t('reserveCta')),
            ),
          ),
        ],
      ),
    );
  }
}
