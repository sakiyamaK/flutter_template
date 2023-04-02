
.PHONY: create 
create:
	asdf local flutter ${version}
	flutter create .

.PHONY: clean
clean:
	flutter clean
	flutter pub get

.PHONY: clear
clear:
	rm -rf lib android ios macos test web 
	rm -rf .metadata .packages *.iml
	rm -rf pubspec.lock pubspec.yaml
	rm -rf analysis_options.yaml

.PHONY: doctor
doctor:
	flutter doctor
	
.PHONY: devices
devices:
	flutter devices
	
.PHONY: pub-get
pub-get:
	flutter pub get

.PHONY: build-runner
build-runner:
	flutter pub run build_runner watch --delete-conflicting-outputs
