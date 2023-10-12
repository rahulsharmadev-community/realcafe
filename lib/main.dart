import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realcafe/design/admin/add_product_screen.dart';
import 'package:realcafe/logic/cubits/userprofile/userprofile_cubit.dart';
import 'package:realcafe/logic/objects/order.dart';
// import 'package:provider/provider.dart';
// import 'package:realcafe/objects/coffeeDataBase.dart';
// import 'package:realcafe/objects/themeData.dart';
// import 'package:realcafe/objects/userProfile.dart';
// import 'package:realcafe/pages/favouritePage.dart';
// import 'package:realcafe/pages/homePage.dart';
// import 'package:realcafe/pages/myAddressesPage.dart';
// import 'package:realcafe/pages/profilePage.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(providers: [
//       ChangeNotifierProvider<CoffeeDataBase>.value(value: CoffeeDataBase()),
//       ChangeNotifierProvider<UserProfile>.value(value: UserProfile()),
//     ], builder: (builder, child) => const MyAppTheme());
//   }
// }

// class MyAppTheme extends StatefulWidget {
//   const MyAppTheme({Key? key}) : super(key: key);

//   @override
//   State<MyAppTheme> createState() => _MyAppThemeState();
// }

// class _MyAppThemeState extends State<MyAppTheme> {
//   late int currentPage;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     setState(() {
//       currentPage = 0;
//     });
//   }

// //set Bottom Navigation Items List
//   List<BottomNavigationBarItem> bottomNavigationItems = const [
//     BottomNavigationBarItem(
//         label: 'Home',
//         activeIcon: Icon(Icons.home),
//         icon: Icon(Icons.home_outlined)),
//     BottomNavigationBarItem(
//       label: 'Addresses',
//       activeIcon: Icon(Icons.location_on_outlined),
//       icon: Icon(
//         Icons.location_on_outlined,
//       ),
//     ),
//     BottomNavigationBarItem(
//       label: 'Favorite',
//       activeIcon: Icon(Icons.favorite),
//       icon: Icon(
//         Icons.favorite_border_outlined,
//       ),
//     ),
//     BottomNavigationBarItem(
//       label: 'Profile',
//       activeIcon: Icon(Icons.person_rounded),
//       icon: Icon(
//         Icons.person_outlined,
//       ),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       themeMode: ThemeMode.dark,
//       color: const Color(0xff201520),
//       theme: MyTheme.defaultTheme,
//       home: Scaffold(
//         bottomNavigationBar: BottomNavigationBar(
//             currentIndex: currentPage,
//             selectedIconTheme:
//                 const IconThemeData(color: Color(0xffEFE3C8), size: 28),
//             unselectedIconTheme: const IconThemeData(color: Color(0xff746763)),
//             selectedItemColor: const Color(0xffEFE3C8),
//             showSelectedLabels: true,
//             onTap: (value) => setState(() {
//                   currentPage = value;
//                   if (value == 0) {
//                     Provider.of<CoffeeDataBase>(context, listen: false)
//                         .resetmenuItems;
//                   }
//                 }),
//             items: bottomNavigationItems),
//         body: IndexedStack(
//           index: currentPage,
//           children: const [
//             HomePage(),
//             MyAddressesPage(),
//             FavouritePage(),
//             ProfilePage()
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserProfileCubit>(
      create: (context) => UserProfileCubit(),
      child: const MaterialApp(
        home: AddProductScreen(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      BlocBuilder<UserProfileCubit, UserProfileState>(
        builder: (context, state) {
          if (state is UserProfileLoaded)
            return Text(state.user.toRawJson());
          else
            return CircularProgressIndicator();
        },
      ),
      const SizedBox(height: 56),
      ElevatedButton(
          onPressed: () => context.read<UserProfileCubit>().emitName('Rahul'),
          child: const Text('Name')),
      ElevatedButton(
          onPressed: () =>
              context.read<UserProfileCubit>().emitEmail('example@gmail.com'),
          child: const Text('Email')),
      ElevatedButton(
          onPressed: () =>
              context.read<UserProfileCubit>().emitPhoneNo(16845189),
          child: const Text('Phone')),
      ElevatedButton(
          onPressed: () => context.read<UserProfileCubit>().addPendingOrder(
              Order(
                  orderId: "TESTorderId",
                  productId: 'TESTproductId',
                  title: 'TESTtitle',
                  image: 'TESTimage',
                  dateTime: 'TEST',
                  quantity: 1512,
                  totalPrice: 111.1)),
          child: const Text('order')),
      ElevatedButton(
          onPressed: () =>
              context.read<UserProfileCubit>().removePendingOrder(0),
          child: const Text('remove')),
    ]));
  }
}
