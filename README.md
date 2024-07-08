# app

App for the bads project, allows users to controll their ad topics settings.

<p float="left">
<img src="./1.jpeg" alt="Current user categories" width="20%">
<img src="./2.jpeg" alt="Category selector to allow user controll" width="20%">
<img src="./3.jpeg" alt="This app is powered by Bads, connection Dialog" width="20%">
<img src="./4.jpeg" alt="Demo Flutter counter app with small test ad" width="20%">
<img src="./5.jpeg" alt="Ads viewed by the user" width="20%">
<div/>

## Run it

**Required**:
- Flutter SDK
- Android Studio
- Backend up and running
- SDK Demo app installed

Please search and replace for all: `http://*` occurances, and replace it with your ip and port.
And go:
- Run: `flutter run`

## Time complexity:
- Create ad profiles: `AdProfileJob.dart` ll. 42-73 , `BloomProfileCreator` ll. 19-40, `BloomFilter.dart` ll. 33-39
- Storing ad interactions: `RequestInteractedAdsJob.dart` ll. 25-53, `IDService.dart` ll. 66-82, `DBSingleton.dart` ll. 79-87

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

TODO: workmanger ios perform last setup: SystemCapabilities