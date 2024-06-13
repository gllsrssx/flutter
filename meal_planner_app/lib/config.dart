import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static String get googleClientId =>
      dotenv.env[
          '702932366935-bjg408ltv60m5k1auqn9dphfio58jg9n.apps.googleusercontent.com'] ??
      '';
}
