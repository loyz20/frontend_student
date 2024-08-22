// lib/src/config/environment.dart

enum Environment { development, staging, production }

class EnvironmentConfig {
  final Environment environment;

  EnvironmentConfig(this.environment);

  // Base URL untuk API tergantung pada environment
  String get apiBaseUrl {
    switch (environment) {
      case Environment.development:
        return 'https://dev.api.example.com';
      case Environment.staging:
        return 'https://staging.api.example.com';
      case Environment.production:
        return 'https://api.example.com';
      default:
        return 'https://api.example.com';
    }
  }

  // Kunci API tergantung pada environment
  String get apiKey {
    switch (environment) {
      case Environment.development:
        return 'DEV_API_KEY';
      case Environment.staging:
        return 'STAGING_API_KEY';
      case Environment.production:
        return 'PROD_API_KEY';
      default:
        return 'PROD_API_KEY';
    }
  }

  // Nama aplikasi tergantung pada environment
  String get appName {
    switch (environment) {
      case Environment.development:
        return 'MyApp - Development';
      case Environment.staging:
        return 'MyApp - Staging';
      case Environment.production:
        return 'MyApp';
      default:
        return 'MyApp';
    }
  }

  // Versi aplikasi
  String get appVersion => '1.0.0';

  // Gaya umum
  double get defaultPadding => 16.0;
  double get defaultMargin => 16.0;
}
