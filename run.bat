@echo off

if "%1"=="fmt" goto fmt
if "%1"=="get" goto get
if "%1"=="install" goto install
if "%1"=="installdev" goto installdev
if "%1"=="gen" goto gen
if "%1"=="dev" goto dev
if "%1"=="dev-web" goto dev-web
if "%1"=="staging" goto staging
if "%1"=="staging-web" goto staging-web
if "%1"=="prod" goto prod
if "%1"=="prod-web" goto prod-web
if "%1"=="clean" goto clean
if "%1"=="localize" goto localize
if "%1"=="fix" goto fix
if "%1"=="commitempty" goto commitempty
if "%1"=="shorebird-patch" goto shorebird-patch

goto :eof

:fmt
dart format lib
goto :eof

:get
flutter pub get
goto :eof

:install
flutter pub add "%2"
goto :eof

:installdev
flutter pub add -d "%2"
goto :eof

:gen
dart run build_runner build --delete-conflicting-outputs
goto :eof

:dev
flutter run --flavor development --target lib/main_development.dart
goto :eof

:dev-web
flutter run --flavor development --target lib/main_development.dart -d chrome
goto :eof

:staging
flutter run --flavor staging --target lib/main_staging.dart
goto :eof

:staging-web
flutter run --flavor staging --target lib/main_staging.dart -d chrome
goto :eof

:prod
flutter run --flavor production --target lib/main_production.dart
goto :eof

:prod-web
flutter run --flavor production --target lib/main_production.dart -d chrome
goto :eof

:clean
flutter clean
goto :eof

:localize
flutter gen-l10n
goto :eof

:fix
dart fix --apply
goto :eof

:commitempty
git commit --allow-empty -m "Trigger build"
goto :eof

:shorebird-patch
shorebird patch android --target lib/main_production.dart --flavor production
goto :eof
