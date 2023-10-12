// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:realcafe/objects/coffeeDataBase.dart';
// import 'package:realcafe/objects/userProfile.dart';

// class FavouritePage extends StatelessWidget {
//   const FavouritePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var coffeeDataBase = Provider.of<CoffeeDataBase>(context);
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('My Favourite'),
//           actions: [
//             IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.search_rounded,
//                     color: Theme.of(context).primaryColor))
//           ],
//         ),
//         body: ListView.builder(
//             itemCount: coffeeDataBase.favouriteItems.length,
//             itemBuilder: (itemBuilder, index) => Card(
//                   child: Container(
//                     height: 100,
//                     padding: const EdgeInsets.all(8),
//                     child: Row(children: [
//                       Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15)),
//                         clipBehavior: Clip.hardEdge,
//                         child: Image.asset(
//                           'assets/images/${coffeeDataBase.favouriteItems[index].coffee.image}',
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                       const SizedBox(width: 8),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             coffeeDataBase.favouriteItems[index].coffee.name,
//                             style: Theme.of(context).primaryTextTheme.headline6,
//                           ),
//                           Text(
//                             coffeeDataBase.favouriteItems[index].coffee.name
//                                 .toString()
//                                 .substring(
//                                     1,
//                                     coffeeDataBase
//                                             .favouriteItems[index].coffee.name
//                                             .toString()
//                                             .length -
//                                         1)
//                                 .trim(),
//                             style: Theme.of(context)
//                                 .primaryTextTheme
//                                 .bodyText1!
//                                 .copyWith(color: Colors.white),
//                           ),
//                         ],
//                       ),
//                       Spacer(),
//                       IconButton(
//                         padding: EdgeInsets.only(right: 32),
//                         onPressed: () {
//                           coffeeDataBase.favouriteItems[index]
//                               .switchFavourite();
//                         },
//                         icon: Icon(
//                           Icons.favorite,
//                           color: Colors.red,
//                         ),
//                       )
//                     ]),
//                   ),
//                 )));
//   }
// }
