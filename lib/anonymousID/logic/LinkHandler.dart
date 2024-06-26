import 'package:app/anonymousID/logic/SecretService.dart';
import 'package:app_links/app_links.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkHandler {
  final GetIt getIt = GetIt.instance;
  final SecretService secretService = GetIt.instance.get<SecretService>();

  void registerListener() {
    final appLinks = AppLinks();
    appLinks.uriLinkStream.listen((Uri uri) async {
      debugPrint('Received uri: $uri');
      if (uri.path.contains("/fetch")) {
        debugPrint(uri.path.split("/").last);
        final profileSecretRaw =
            await secretService.getSecret(SecretType.PROFILE);
        final interactionSecretRaw =
            await secretService.getSecret(SecretType.INTERACTION);
        final profileSecret = profileSecretRaw.split("::").first;
        final interactionSecret = interactionSecretRaw.split("::").first;
        final profileCounter = profileSecretRaw.split("::")[1];
        final interactionCounter = interactionSecretRaw.split("::")[1];
        final lastUpdate = await secretService.getLastUpdate();

        launchUrl(Uri(
          host: "de.triskalion.bads.sdk",
          queryParameters: {
            "profile_secret": profileSecret,
            "interaction_secret": interactionSecret,
            "profile_counter": profileCounter,
            "interaction_counter": interactionCounter,
            "last_updated": lastUpdate!.toIso8601String(),
          },
          scheme: "submit",
        ));
      }
    });
  }
}
