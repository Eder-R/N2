// import 'configs/app_settings.dart';
import 'pages/moedas_page.dart';

import 'configs/hive_config.dart';
// import 'repositories/conta_repository.dart';
// import 'repositories/favoritas_repository.dart';
// import 'repositories/moeda_repository.dart';
// import 'services/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'meu_aplicativo.dart';
// import 'widgets/auth_check.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveConfig.start();
  await Firebase.initializeApp();

  runApp( MeuAplicativo()
    
    // MultiProvider(
    //   providers: [
        // ChangeNotifierProvider(create: (context) => AuthService()),
        // ChangeNotifierProvider(create: (context) => MoedaRepository()),
        // ChangeNotifierProvider(
            // create: (context) => ContaRepository(
                  // moedas: context.read<MoedaRepository>(),
                // )),
        // ChangeNotifierProvider(create: (context) => AppSettings()),
        // ChangeNotifierProvider(
          // create: (context) => FavoritasRepository(
            // auth: context.read<AuthService>(),
            // moedas: context.read<MoedaRepository>(),
          // ),
        // ),
   //   ],
      // child: MeuAplicativo(),
    // ),
  );
}

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cripto Moedas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MoedasPage(),
    );
  }
}
