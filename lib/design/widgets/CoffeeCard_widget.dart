// // ignore_for_file: file_names

// import 'package:flutter/material.dart';
// import 'package:realcafe/screens/coffeeScreen.dart';

// class CoffeeCardWidget extends StatelessWidget {
//   final CoffeeCollection coffee;
//   const CoffeeCardWidget({Key? key, required this.coffee}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var primaryColor = Theme.of(context).primaryColor;
//     return InkWell(
//       onTap: () => Navigator.of(context).push(MaterialPageRoute(
//           builder: (builder) => CoffeeScreen(coffeeCollection: coffee))),
//       child: Card(
//         child: Container(
//           margin: const EdgeInsets.all(12),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Expanded(
//                 child: Container(
//                   width: double.maxFinite,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       image: DecorationImage(
//                           image: AssetImage(
//                               'assets/images/${coffee.coffee.image}'),
//                           fit: BoxFit.fill)),
//                   child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Container(
//                           width: 60,
//                           padding: const EdgeInsets.symmetric(vertical: 2),
//                           decoration: const BoxDecoration(
//                               color: Color.fromRGBO(65, 65, 65, 50),
//                               borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(15),
//                                   bottomRight: Radius.circular(15))),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               const Icon(
//                                 Icons.star,
//                                 color: Colors.amber,
//                                 size: 20,
//                               ),
//                               Text(
//                                 coffee.coffee.rating.toString(),
//                                 style: Theme.of(context)
//                                     .primaryTextTheme
//                                     .bodyText1!
//                                     .copyWith(color: Colors.white),
//                               ),
//                             ],
//                           ))),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 8.0),
//                 child: Text(coffee.coffee.name,
//                     style: Theme.of(context).primaryTextTheme.bodyText1),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white10,
//                     borderRadius: BorderRadius.circular(15)),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Text(
//                         '₹${coffee.coffee.price}',
//                         textAlign: TextAlign.center,
//                         style: const TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                             fontFamily: 'Raleway'),
//                       ),
//                     ),
//                     SizedBox.square(
//                       dimension: 45,
//                       child: FlatButton(
//                           padding: EdgeInsets.zero,
//                           color: primaryColor,
//                           onPressed: () {},
//                           child: Icon(Icons.add)),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
