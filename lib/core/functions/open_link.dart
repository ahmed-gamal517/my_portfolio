import 'package:url_launcher/url_launcher.dart';

Future<void> openLink(String link) async {
  final Uri url = Uri.parse(link);

  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

Future<void> openPhoneLink(String phoneNumber) async {
  final Uri uri = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  }
}

Future<void> openEmailLink(String email) async {
  final Uri uri = Uri(
    scheme: 'mailto',
    path: email,
    query: 'subject=Hello&body=Hi there!',
  );
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  }
}

Future<void> openLocationLink(String locationQuery) async {
  final Uri uri = Uri.parse(
    'https://www.google.com/maps/search/?api=1&query=$locationQuery',
  );
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  }
}

Future<void> openWhatsAppLink(String phone) async {
  final Uri uri = Uri.parse('https://wa.me/$phone');
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  }
}
