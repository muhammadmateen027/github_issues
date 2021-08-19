# Github Issues

![coverage][flutter_version]
![coverage][dart_version]
![coverage][bloc_version]
![coverage][override_bloc_version]
![coverage][sentry_io]
![coverage][dio]
![coverage][development] ![coverage][staging] ![coverage][production]
![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]


---

## Getting Started 🚀


In this project we will discuss:

- ✅ [Problem](#problem)
- ✅ [Solution](#solution)
- ✅ [Flavours](#flavours-)
- ✅ [Translation](#working-with-translations-)
- ✅ [Dependencies](#dependencies)
- ✅  [Tests](#tests-)
---

## Problem 💥
Build an application to load flutter related issues from github and navigate to the detail page on selected issues.
In the detail page, preview the actual issue with the status.

## Solution 💪
The solution is design so user can have nice experience and can scroll infinite.

<table>
  <tr>
    <td> <img src="https://user-images.githubusercontent.com/24449076/130081438-ae209bdd-df40-42ea-bdea-73666a77bb87.png" title="Issues list" width="180" height="350" /></td>
    <td> <img src="https://user-images.githubusercontent.com/24449076/130081470-e1e029fc-0dd6-4f50-adf0-0acfa4a37486.png" title="Issues" width="180" height="350" /></td>
   </tr> 
 <tr>
    <td> <img src="https://user-images.githubusercontent.com/24449076/130081494-94a273ff-2a3a-43b3-b3ed-15daf37c730c.png" title="Issue list" width="180" height="350" /></td>
    <td> <img src="https://user-images.githubusercontent.com/24449076/130081520-fa78d419-8d10-4a25-90ba-e1187c80330c.png" title="Issues" width="180" height="350" /></td>
   </tr> 
</table>

> You will notice a full page loading indicator. It's just for showing that, if we build a common Builder then we can
> use in Interceptor and can be shown whenever required.

### State management

![coverage][state_management] ![coverage][bloc_version] ![coverage][override_bloc_version]

- Thir project is using `BLoC's 7.0.0` version as State management library. But as `Bloc` team is working
  on [newer version](https://github.com/felangel/bloc/tree/feat/replace-mapEventToState-with-on%3CE%3E)
  that will help to remove boilerplate of writing `mapEventsToSate` and bloc will look like this:
  ```dart 
  class IssueDetailBloc extends Bloc<IssueDetailEvent, IssueDetailState> {
      IssueDetailBloc(): super(IssueDetailInitial()) {
        // Load issue detail.
        on<LoadIssueDetail>(_loadIssueDetail);
      }
      
      // perform your action here
      void _loadIssueDetail(LoadIssueDetail event, Emit<IssueDetailState> emit) async {
          // your business logic will be here to handle state and event
      }
  }
  ```
### Log controller

![coverage][sentry_io]

- [Sentry.io](https://sentry.io/welcome/) is being used to log all errors and issues in a server.


## Flavours 🚀

This project contains 3 flavors:

![coverage][development] ![coverage][staging] ![coverage][production]

Before run application you need to create `.env` file in app directory and add these varaibles:

```dotenv
#Logs Controller --  create your key (https://sentry.io/welcome/) and add
SENTRY_IO=

API_URL=https://api.github.com/repos/flutter/flutter
```

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

_\*Github Issues works on iOS and Android._

---
## Working with Translations 🌐

This project relies on [flutter_localizations][flutter_localizations_link] and follows
the [official internationalization guide for Flutter][internationalization_link].

> **Note:** *For demo purposes, I have added two locales but have same strings. We can update and even
> add more locales to support.*

### Adding Strings

1. To add a new localizable string, open the `app_en.arb` file at `lib/l10n/arb/app_en.arb`.

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

2. Then add a new key/value and description

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    },
    "helloWorld": "Hello World",
    "@helloWorld": {
        "description": "Hello World Text"
    }
}
```

3. Use the new string

```dart
import 'package:github_issues/l10n/l10n.dart';

@override
Widget build(BuildContext context) {
  final l10n = context.l10n;
  return Text(l10n.helloWorld);
}
```

### Adding Supported Locales

Update the `CFBundleLocalizations` array in the `Info.plist` at `ios/Runner/Info.plist` to include the new locale.

```xml
    ...

<key>CFBundleLocalizations</key>
<array>
<string>en</string>
<string>es</string>
</array>

        ...
```

### Adding Translations

1. For each supported locale, add a new ARB file in `lib/l10n/arb`.

```
├── l10n
│   ├── arb
│   │   ├── app_en.arb
│   │   └── app_es.arb
│   │   └── ----------
```

2. Add the translated strings to each `.arb` file:

`app_en.arb`

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

`app_es.arb`

```arb
{
    "@@locale": "es",
    "counterAppBarTitle": "Contador",
    "@counterAppBarTitle": {
        "description": "Texto mostrado en la AppBar de la página del contador"
    }
}
```
---
## Dependencies 💉
We like to highlight some major dependencies:
- [dio: ^4.0.0](https://pub.dev/packages/dio) -- A powerful Http client for Dart, which supports Interceptors, Global configuration, FormData, Request Cancellation, File downloading, Timeout etc.
- [freezed: ^0.14.2](https://pub.dev/packages/freezed) -- Welcome to Freezed, yet another code generator for unions/pattern-matching/copy.
- [get_it: ^7.1.3](https://pub.dev/packages/get_it) -- This is a simple Service Locator for Dart and Flutter projects with some additional goodies
- [pull_to_refresh: ^2.0.0](https://pub.dev/packages/pull_to_refresh) -- A widget provided to the flutter scroll component drop-down refresh and pull up load.support android and ios
- [sentry_flutter: ^5.1.0](https://pub.dev/packages/sentry_flutter) -- This package includes support to native crashes through Sentry's native SDKs: (Android and iOS). It will capture errors in the native layer, including (Java/Kotlin/C/C++ for Android and Objective-C/Swift for iOS).
---


## Tests 🧪

In this repository we have covered one widget and one unit test to show as a demo.


[flutter_version]: https://img.shields.io/badge/flutter-2.2.3-1389FD.svg

[dart_version]: https://img.shields.io/badge/Dart-2.13.4-1389FD.svg

[state_management]: https://img.shields.io/badge/State_Management-42b983.svg

[bloc_version]: https://img.shields.io/badge/BLoC-7.0.0-42b983.svg

[override_bloc_version]: https://img.shields.io/badge/Override_BLoC-upcoming_version-42b983.svg

[sentry_io]: https://img.shields.io/badge/Sentry-5.1.0-362d59.svg

[dio]: https://img.shields.io/badge/dio-4.0.0-4334eb.svg

[production]: https://img.shields.io/badge/Production-0bbf5c.svg

[development]: https://img.shields.io/badge/Development-b6d91c.svg

[staging]: https://img.shields.io/badge/Staging-edd013.svg

[coverage_badge]: coverage_badge.svg

[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html

[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization

[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg

[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
