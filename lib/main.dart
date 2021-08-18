import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:zippp_vendedores/src/pages/detalle_pedido.dart';
import 'package:zippp_vendedores/src/pages/friends_chat.dart';
import 'package:zippp_vendedores/src/pages/home_page.dart';
import 'package:zippp_vendedores/src/pages/login_page.dart';
import 'package:zippp_vendedores/src/pages/pedidos_page.dart';
import 'package:zippp_vendedores/src/pages/profile_pages.dart';
import 'package:zippp_vendedores/src/pages/ventas_page.dart';
import 'package:zippp_vendedores/src/share_prefs/preferencias_usuario.dart';
import 'package:zippp_vendedores/src/utils/data_utils.dart';

 



void main()async{

  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuario();
  
  await prefs.initPrefs();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  

  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
   final _prefs = new PreferenciasUsuario();
   void initState() { 
    super.initState();
    
  }

  @override
  Widget build(BuildContext context){ 
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
        title: 'Zippo-Ronson-Vendedores',
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
         
        routes: {
      'login': (context) => LoginPage(),
          'home': (context) => HomePage(),
          'ventas': (context) => VentasPage(),
          'pedidos': (context) => PedidosPage(),
          'detallopedido': (context) => DetallePedidoPage(),
          'profile': (context) => ProfilePage(),
          'chat': (context) => FriendsChat(),

      //'loadingchat': (context) => HomeChat(),
    },
    theme: ThemeData.light(),
      );
  }
 
}

 