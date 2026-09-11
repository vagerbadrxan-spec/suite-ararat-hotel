import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../l10n/translations.dart';

const contactPhoneNumbers = ['+4915210308851', '+9647503648118'];
const contactEmail = 'berwari100@gmail.com';

Future<void> _launch(Uri uri) async {
  await launchUrl(uri, mode: LaunchMode.externalApplication);
}

void showContactSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (sheetContext) => Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 24,
        bottom: MediaQuery.of(sheetContext).viewInsets.bottom + 24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            sheetContext.t('contactTitle'),
            style: Theme.of(sheetContext).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(sheetContext.t('contactBody'), textAlign: TextAlign.center),
          const SizedBox(height: 20),
          for (final number in contactPhoneNumbers)
            ListTile(
              leading: const Icon(Icons.call),
              title: Text(number),
              onTap: () => _launch(Uri(scheme: 'tel', path: number)),
            ),
          ListTile(
            leading: const Icon(Icons.email),
            title: Text(contactEmail),
            onTap: () => _launch(Uri(scheme: 'mailto', path: contactEmail)),
          ),
          const SizedBox(height: 8),
        ],
      ),
    ),
  );
}
