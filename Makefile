gen:
		dart run build_runner build --delete-conflicting-outputs

fmt:
		dart fix --apply && dart format lib test

apk:
		flutter build apk --obfuscate --split-debug-info=build/debug --split-per-abi  --flavor production --target lib/main_production.dart -vv

apk-stg:
		flutter build apk  --flavor staging --target lib/main_staging.dart

aab:
		flutter build appbundle  --flavor production --target lib/main_production.dart

base64:
		cat path/to/file.png | openssl base64 | tr -d '\n' | pbcopy

ipa:
		flutter build ipa  --flavor production --target lib/main_production.dart

test-ipa:
		flutter build ios  --flavor production --target lib/main_production.dart --release

sha1:
		keytool -list -v -keystore ~/.android/debug.keystore

pods:
		cd ios && pod install --repo-update --verbose && cd ..

splash:
		dart run flutter_native_splash:create

icons:
		dart run flutter_launcher_icons:generate && dart run icons_launcher:create

tests:
		flutter test --test-randomize-ordering-seed random

