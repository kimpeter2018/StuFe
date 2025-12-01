import 'package:stufe/features/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final flavor = const String.fromEnvironment('FLAVOR', defaultValue: 'local');
  await dotenv.load(fileName: flavor == 'prod' ? ".env.prod" : ".env.local");

  try {
    await Supabase.initialize(
      url: dotenv.env['SUPABASE_URL']!,
      anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
    );
  } catch (e) {
    debugPrint('Supabase init failed: $e');
  }

  // await GoogleSignIn.instance.initialize(
  //   clientId:
  //       "1095073134659-tcqd1cu08i6q2fpjd37oonl1auj33tqo.apps.googleusercontent.com",
  //   serverClientId:
  //       "1095073134659-hgpsioqua34ut9bls0jcaju38o33ura9.apps.googleusercontent.com",
  // );

  runApp(const ProviderScope(child: App()));
}
