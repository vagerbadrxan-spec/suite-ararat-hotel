import 'package:flutter/material.dart';
import '../l10n/translations.dart';
import '../models/staff.dart';
import '../widgets/contact_sheet.dart';
import '../widgets/placeholder_image.dart';
import '../widgets/site_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return SiteScaffold(
      currentRoute: '/',
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 32),
        children: [
          _Hero(scheme: scheme),
          const SizedBox(height: 40),
          _Section(
            title: context.t('aboutTitle'),
            child: Text(
              context.t('aboutBody'),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const SizedBox(height: 32),
          _Section(
            title: context.t('locationTitle'),
            child: Row(
              children: [
                Icon(Icons.location_on_outlined, color: scheme.primary),
                const SizedBox(width: 8),
                Expanded(child: Text(context.t('locationBody'))),
              ],
            ),
          ),
          const SizedBox(height: 32),
          _Section(
            title: context.t('amenitiesTitle'),
            child: Wrap(
              spacing: 24,
              runSpacing: 16,
              children: [
                _Amenity(icon: Icons.wifi, label: context.t('amenityWifi')),
                _Amenity(icon: Icons.videocam_outlined, label: context.t('amenityCameras')),
                _Amenity(icon: Icons.cleaning_services_outlined, label: context.t('amenityCleaning')),
              ],
            ),
          ),
          const SizedBox(height: 32),
          _Section(
            title: context.t('staffTitle'),
            subtitle: context.t('staffCaption'),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                for (final staff in defaultStaff)
                  PlaceholderImage(
                    imageUrl: staff.imageUrl,
                    label: '',
                    icon: Icons.person_outline,
                    width: 96,
                    height: 96,
                    shape: BoxShape.circle,
                  ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Text(
              '© ${DateTime.now().year} ${context.t('appName')} — ${context.t('footerRights')}',
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class _Hero extends StatelessWidget {
  final ColorScheme scheme;
  const _Hero({required this.scheme});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
      decoration: BoxDecoration(
        color: scheme.primaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            context.t('heroTitle'),
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: scheme.onPrimaryContainer,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            context.t('heroSubtitle'),
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: scheme.onPrimaryContainer,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () => showContactSheet(context),
            icon: const Icon(Icons.call_outlined),
            label: Text(context.t('reserveCta')),
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget child;

  const _Section({required this.title, this.subtitle, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
          if (subtitle != null) ...[
            const SizedBox(height: 4),
            Text(subtitle!, style: Theme.of(context).textTheme.bodyMedium),
          ],
          const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }
}

class _Amenity extends StatelessWidget {
  final IconData icon;
  final String label;

  const _Amenity({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Theme.of(context).colorScheme.primary),
        const SizedBox(width: 8),
        Text(label),
      ],
    );
  }
}
