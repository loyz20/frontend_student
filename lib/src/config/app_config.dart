// lib/src/config/app_config.dart

import 'package:frontend_student/src/config/environment.dart';

class AppConfig {
  final String apiBaseUrl;
  final String apiKey;
  final String appName;
  final String appVersion;

  AppConfig({
    required this.apiBaseUrl,
    required this.apiKey,
    required this.appName,
    required this.appVersion,
  });

  // Factory method to create configurations for different environments
  factory AppConfig.forEnvironment(Environment environment) {
    switch (environment) {
      case Environment.development:
        return AppConfig(
          apiBaseUrl: 'https://dev.api.example.com',
          apiKey: 'DEV_API_KEY',
          appName: 'MyApp - Development',
          appVersion: '1.0.0-dev',
        );
      case Environment.staging:
        return AppConfig(
          apiBaseUrl: 'https://staging.api.example.com',
          apiKey: 'STAGING_API_KEY',
          appName: 'MyApp - Staging',
          appVersion: '1.0.0-staging',
        );
      case Environment.production:
        return AppConfig(
          apiBaseUrl: 'https://api.example.com',
          apiKey: 'PROD_API_KEY',
          appName: 'MyApp',
          appVersion: '1.0.0',
        );
    }
  }
}
