enum Flavor { local, dev, prod }

extension FlavorExtension on Flavor {
  String get envFile {
    switch (this) {
      case Flavor.local:
        return 'local.env';
      case Flavor.dev:
        return 'dev.env';
      case Flavor.prod:
        return 'prod.env';
    }
  }
}
