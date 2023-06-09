
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/AddScreen.dart';
import 'package:flutter_project/NotificationDemo.dart';
import 'package:flutter_project/UpdateScreen.dart';
import 'package:flutter_project/UploadImage.dart';
import 'package:flutter_project/services/NotificationService.dart';
import 'package:flutter_project/viewmodels/product_viewmodel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'DashboardScreen.dart';
import 'ForgetScreen.dart';
import 'LoginScreen.dart';
import 'RegisterScreen.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  NotificationService.initialize();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>ProductViewModel())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          textTheme: GoogleFonts.latoTextTheme().copyWith(
            bodyMedium: GoogleFonts.oswald(),
          ),
        ),
        initialRoute: "/notification-demo",
        routes: {
          "/login": (context) => LoginScreen(),
          "/register": (context) => RegisterScreen(),
          "/forget-password": (context) => ForgetScreen(),
          "/dasboard": (context) => DashBoardScreen(),
          "/add-screen": (context) => AddScreen(),
          "/update-screen": (context) => UpdateScreen(),
          "/upload-screen": (context)=>UploadImage(),
          "/notification-demo" : (context)=> NotificationDemo()
        },
      ),
    );
  }
}


//
// @override
// void initState() {
//   WidgetsBinding.instance.addPostFrameCallback((_) {
//   });
//   super.initState();
// }
// @override
// void initState() {
//   WidgetsBinding.instance.addPostFrameCallback((_) {
//   });
//   super.initState();
// }
