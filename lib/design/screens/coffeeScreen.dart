// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:realcafe/objects/coffeeDataBase.dart';
// import 'package:realcafe/screens/paymentMethodScreen.dart';

// class CoffeeScreen extends StatefulWidget {
//   final CoffeeCollection coffeeCollection;
//   const CoffeeScreen({Key? key, required this.coffeeCollection})
//       : super(key: key);

//   @override
//   State<CoffeeScreen> createState() => _CoffeeScreenState();
// }

// class _CoffeeScreenState extends State<CoffeeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     var primaryTextTheme = Theme.of(context).primaryTextTheme;
//     return Scaffold(
//       bottomNavigationBar: PreferredSize(
//         preferredSize: Size.fromHeight(kToolbarHeight),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//           child: Row(
//             children: [
//               RichText(
//                   text: TextSpan(
//                       text: 'Price\n',
//                       style: const TextStyle(
//                           fontFamily: 'Raleway',
//                           fontSize: 16,
//                           color: Colors.white),
//                       children: [
//                     TextSpan(
//                       text: '₹${widget.coffeeCollection.coffee.price}',
//                       style: const TextStyle(
//                           fontSize: 20, fontWeight: FontWeight.bold),
//                     )
//                   ])),
//               const SizedBox(width: 32),
//               Expanded(
//                   child: FlatButton(
//                       minWidth: double.maxFinite,
//                       height: kToolbarHeight,
//                       color: Theme.of(context).primaryColor,
//                       onPressed: () => Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (builder) => const PaymentMethod())),
//                       child: const Text(
//                         'BUY NOW',
//                         style: TextStyle(
//                             fontSize: 20,
//                             fontFamily: 'Raleway',
//                             fontWeight: FontWeight.bold),
//                       )))
//             ],
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Container(
//               padding: const EdgeInsets.all(16),
//               margin: const EdgeInsets.all(8),
//               height: MediaQuery.of(context).size.height * 0.55,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(55),
//                   image: DecorationImage(
//                       image: AssetImage(
//                           'assets/images/${widget.coffeeCollection.coffee.image}'))),
//               child: SafeArea(
//                 child: Align(
//                   alignment: Alignment.topLeft,
//                   child: InkWell(
//                     onTap: () => Navigator.pop(context),
//                     child: CircleAvatar(
//                         radius: 24,
//                         backgroundColor: Theme.of(context).backgroundColor,
//                         child: Icon(
//                           Icons.arrow_back,
//                           color: Theme.of(context).primaryColor,
//                         )),
//                   ),
//                 ),
//               ),
//             ),
//             ListTile(
//                 title: Text(
//                   widget.coffeeCollection.coffee.name,
//                   style: primaryTextTheme.headline4,
//                 ),
//                 subtitle: Row(
//                   children: [
//                     Text(
//                       widget.coffeeCollection.coffee.category
//                           .toString()
//                           .substring(
//                               1,
//                               widget.coffeeCollection.coffee.category
//                                       .toString()
//                                       .length -
//                                   1)
//                           .trim(),
//                       style: primaryTextTheme.headline6,
//                       overflow: TextOverflow.fade,
//                     ),
//                     const SizedBox(width: 32),
//                     const Icon(
//                       Icons.star,
//                       color: Colors.amber,
//                       size: 20,
//                     ),
//                     const SizedBox(width: 4),
//                     Text(
//                       widget.coffeeCollection.coffee.rating.toString(),
//                       style: const TextStyle(fontSize: 18, color: Colors.white),
//                     )
//                   ],
//                 ),
//                 trailing: IconButton(
//                   onPressed: () {
//                     setState(() {
//                       widget.coffeeCollection.switchFavourite();
//                     });
//                   },
//                   icon: Icon(
//                     widget.coffeeCollection.favourite
//                         ? Icons.favorite
//                         : Icons.favorite_border_outlined,
//                     color: widget.coffeeCollection.favourite
//                         ? Colors.red
//                         : Colors.grey,
//                   ),
//                 )),
//             Padding(
//               padding: EdgeInsets.all(8),
//               child: Text(
//                 widget.coffeeCollection.coffee.info,
//                 style: primaryTextTheme.bodyText2,
//               ),
//             ),
//             SizedBox(
//               height: kToolbarHeight,
//               child: Builder(builder: (context) {
//                 return ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: List<Widget>.from((Provider.of<CoffeeDataBase>(
//                               context)
//                           .available_Milks)
//                       .map((e) => Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: OutlinedButton(
//                               style: OutlinedButton.styleFrom(
//                                   backgroundColor:
//                                       widget.coffeeCollection.milk.contains(e)
//                                           ? Theme.of(context).primaryColor
//                                           : Colors.transparent,
//                                   side: BorderSide(
//                                       color: Theme.of(context).primaryColor,
//                                       width: 2),
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(12))),
//                               onPressed: () => setState(() {
//                                 widget.coffeeCollection.switchMilk(e);
//                               }),
//                               child: Text(
//                                 e,
//                                 style: primaryTextTheme.headline6!.copyWith(
//                                     color:
//                                         widget.coffeeCollection.milk.contains(e)
//                                             ? Theme.of(context).canvasColor
//                                             : Theme.of(context).primaryColor),
//                               ),
//                             ),
//                           ))).toList(),
//                 );
//               }),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
