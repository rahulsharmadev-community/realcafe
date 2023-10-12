// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:realcafe/objects/coffeeDataBase.dart';
// import 'package:realcafe/widgets/CoffeeCard_widget.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController textEditingController = TextEditingController();
//     var _coffeeDataBase = Provider.of<CoffeeDataBase>(context);
//     Color primaryColor = Theme.of(context).primaryColor;
//     return Scaffold(
//       backgroundColor: Theme.of(context).backgroundColor,
//       appBar: AppBar(
//         toolbarHeight: kToolbarHeight * 2,
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.shopping_cart_outlined,
//                 color: primaryColor,
//               ))
//         ],
//         title: RichText(
//           text: TextSpan(
//               text: 'Real\n',
//               style: const TextStyle(
//                   fontFamily: 'Rosarivo',
//                   height: 1.1,
//                   fontSize: 40,
//                   color: Color(0xff877C74)),
//               children: [
//                 TextSpan(text: '  Café', style: TextStyle(color: primaryColor))
//               ]),
//         ),
//         bottom: PreferredSize(
//           preferredSize: const Size.fromHeight(kToolbarHeight),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: TextField(
//               onChanged: (value) =>
//                   _coffeeDataBase.searchFilter(value, context),
//               style: Theme.of(context).primaryTextTheme.bodyText1,
//               decoration: InputDecoration(
//                 hintText: 'Browse your favourite coffee...',
//                 hintStyle: const TextStyle(color: Color(0xff92877F)),
//                 filled: true,
//                 fillColor: const Color(0xff362C36),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 prefixIcon: const Icon(Icons.search,
//                     color: Color(0xff92877F), size: 28),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: Row(
//         children: [
//           RotatedBox(
//               quarterTurns: -1,
//               child: Container(
//                   height: kToolbarHeight,
//                   margin: const EdgeInsets.only(right: 32),
//                   clipBehavior: Clip.hardEdge,
//                   decoration: BoxDecoration(
//                       color: Theme.of(context).accentColor,
//                       borderRadius: const BorderRadius.only(
//                           bottomRight: Radius.circular(100))),
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: List.generate(
//                         _coffeeDataBase.available_Categorys.length,
//                         (index) => Center(
//                                 child: Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 12.0),
//                               child: TextButton(
//                                 onPressed: () {
//                                   textEditingController.clear();
//                                   _coffeeDataBase.setMenuItems(_coffeeDataBase
//                                       .available_Categorys[index]);
//                                 },
//                                 child: Text(
//                                   _coffeeDataBase.available_Categorys[index],
//                                 ),
//                               ),
//                             ))),
//                   ))),
//           Expanded(
//             child: GridView.builder(
//                 padding: const EdgeInsets.all(16),
//                 itemCount: _coffeeDataBase.searchItems.isNotEmpty
//                     ? _coffeeDataBase.searchItems.length
//                     : _coffeeDataBase.menuItems.length,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     mainAxisSpacing: 8,
//                     crossAxisSpacing: 8,
//                     crossAxisCount: 2,
//                     childAspectRatio: 0.5869),
//                 itemBuilder: (itemBuilder, index) => CoffeeCardWidget(
//                       coffee: _coffeeDataBase.searchItems.isNotEmpty
//                           ? _coffeeDataBase.searchItems[index]
//                           : _coffeeDataBase.menuItems[index],
//                     )),
//           )
//         ],
//       ),
//     );
//   }
// }
