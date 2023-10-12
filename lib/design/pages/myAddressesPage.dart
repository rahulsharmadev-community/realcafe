// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:provider/provider.dart';
// import 'package:realcafe/objects/address.dart';
// import 'package:realcafe/objects/userProfile.dart';

// class MyAddressesPage extends StatefulWidget {
//   const MyAddressesPage({Key? key}) : super(key: key);

//   @override
//   _MyAddressesPageState createState() => _MyAddressesPageState();
// }

// class _MyAddressesPageState extends State<MyAddressesPage> {
//   final _formKey = GlobalKey<FormState>();
//   TextEditingController nameController = TextEditingController();
//   TextEditingController phoneNoController = TextEditingController();
//   TextEditingController stateController = TextEditingController();
//   TextEditingController pincodeController = TextEditingController();
//   TextEditingController houseNoController = TextEditingController();
//   AddressType addressType = AddressType.Shop;
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     nameController.dispose();
//     phoneNoController.dispose();
//     stateController.dispose();
//     pincodeController.dispose();
//     houseNoController.dispose();
//   }

//   void get clearAll {
//     setState(() {});
//     nameController.clear();
//     phoneNoController.clear();
//     stateController.clear();
//     pincodeController.clear();
//     houseNoController.clear();
//   }

//   void get saveAll {
//     Provider.of<UserProfile>(context, listen: false).addAddress(Address(
//         name: nameController.text,
//         phoneNo: int.parse(phoneNoController.text),
//         state: stateController.text,
//         pincode: int.parse(pincodeController.text),
//         houseAddress: houseNoController.text,
//         addressType: addressType));
//   }

//   Widget customTextFormField(
//           String hintTitle, TextEditingController textController,
//           {TextInputType? keyboardType}) =>
//       Container(
//         margin: const EdgeInsets.only(bottom: 8),
//         height: 36,
//         width: double.maxFinite,
//         child: TextFormField(
//           style: Theme.of(context).primaryTextTheme.bodyText1,
//           controller: textController,
//           maxLines: 1,
//           keyboardType: keyboardType ?? TextInputType.name,
//           autocorrect: true,
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           validator: (value) {
//             if (value!.isEmpty) {
//               return '';
//             }
//             return null;
//           },
//           decoration: InputDecoration(
//             contentPadding: const EdgeInsets.symmetric(horizontal: 10),
//             hintText: hintTitle,
//             hintStyle: const TextStyle(color: Color(0xff92877F)),
//             fillColor: const Color(0xff362C36),
//             focusedErrorBorder: InputBorder.none,
//             errorStyle: const TextStyle(height: 0),
//             border: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Theme.of(context).primaryColor,
//               ),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Theme.of(context).primaryColor,
//               ),
//             ),
//           ),
//         ),
//       );
//   @override
//   Widget build(BuildContext context) {
//     UserProfile userProfile = Provider.of<UserProfile>(context);
//     var primaryTextTheme = Theme.of(context).primaryTextTheme;
//     var addresses = userProfile.addresses;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('My Addresses'),
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.search_rounded,
//                   color: Theme.of(context).primaryColor))
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
//               child: Text(
//                 'Add delivery Address',
//                 style: primaryTextTheme.bodyText1,
//               ),
//             ),
//             Form(
//               key: _formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   customTextFormField('Name*', nameController),
//                   customTextFormField('Phone number*', phoneNoController,
//                       keyboardType: TextInputType.phone),
//                   Row(
//                     children: [
//                       Expanded(
//                           child:
//                               customTextFormField('State*', stateController)),
//                       const SizedBox(width: 8),
//                       Expanded(
//                         child: customTextFormField(
//                             'Pincode*', pincodeController,
//                             keyboardType: TextInputType.number),
//                       )
//                     ],
//                   ),
//                   customTextFormField(
//                       'House no., Building name*', houseNoController,
//                       keyboardType: TextInputType.streetAddress),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(0, 16, 0, 4),
//                     child: Text(
//                       'Type of Address',
//                       style: primaryTextTheme.bodyText1,
//                     ),
//                   ),
//                   ButtonBar(
//                       alignment: MainAxisAlignment.start,
//                       buttonPadding: EdgeInsets.zero,
//                       children: [AddressType.Home, AddressType.Work]
//                           .map((e) => Padding(
//                                 padding: const EdgeInsets.only(right: 8.0),
//                                 child: GestureDetector(
//                                   onTap: () => setState(() => addressType = e),
//                                   child: Chip(
//                                     side: BorderSide(
//                                         color: Color(e != addressType
//                                             ? 0xffACA7AC
//                                             : 0xffEFE3C8)),
//                                     backgroundColor: const Color(0xff5A505A),
//                                     label: Text(
//                                       e.name,
//                                       style: TextStyle(
//                                           color: Color(e != addressType
//                                               ? 0xffACA7AC
//                                               : 0xffEFE3C8)),
//                                     ),
//                                     avatar: Icon(
//                                         e != AddressType.Home
//                                             ? Icons.business_outlined
//                                             : Icons.home_rounded,
//                                         color: Color(e != addressType
//                                             ? 0xffACA7AC
//                                             : 0xffEFE3C8)),
//                                   ),
//                                 ),
//                               ))
//                           .toList()),
//                   ButtonBar(
//                       alignment: MainAxisAlignment.end,
//                       buttonPadding: EdgeInsets.zero,
//                       children: ['Clear', 'Add']
//                           .map((e) => Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(horizontal: 4.0),
//                                 child: OutlinedButton(
//                                     style: OutlinedButton.styleFrom(
//                                         backgroundColor: 'Clear' != e
//                                             ? null
//                                             : Colors.transparent),
//                                     onPressed: () {
//                                       'Clear' != e
//                                           ? {
//                                               if (!_formKey.currentState!
//                                                   .validate())
//                                                 {
//                                                   print('inValid'),
//                                                   ScaffoldMessenger.of(context)
//                                                       .showSnackBar(const SnackBar(
//                                                           margin: EdgeInsets
//                                                               .fromLTRB(16, 0,
//                                                                   10, 16),
//                                                           content: Text(
//                                                               'Please enter valid address')))
//                                                 }
//                                               else
//                                                 {saveAll, clearAll}
//                                             }
//                                           : clearAll;
//                                     },
//                                     child: Text(
//                                       e,
//                                       style: TextStyle(
//                                           fontFamily: 'Raleway',
//                                           fontWeight: FontWeight.bold,
//                                           color: 'Clear' != e
//                                               ? Theme.of(context).canvasColor
//                                               : Theme.of(context).primaryColor),
//                                     )),
//                               ))
//                           .toList())
//                 ],
//               ),
//             ),
//             const Divider(thickness: 1, color: Colors.white24),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 8.0),
//               child: Text(
//                 'Saved Address',
//                 style: primaryTextTheme.bodyText1,
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                   itemCount: addresses.length,
//                   itemBuilder: (builder, index) => Card(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8)),
//                         child: ListTile(
//                           title: Text(addresses[index].name,
//                               style: primaryTextTheme.bodyText2!
//                                   .copyWith(fontWeight: FontWeight.bold)),
//                           subtitle: Text(
//                             addresses[index].houseAddress,
//                             style: primaryTextTheme.caption,
//                           ),
//                           leading: Container(
//                             height: 50,
//                             width: 50,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(8),
//                                 color: const Color(0xff463D46)),
//                             child: Icon(
//                                 addresses[index].addressType != AddressType.Home
//                                     ? Icons.business_outlined
//                                     : Icons.home_rounded),
//                           ),
//                           iconColor: Colors.grey,
//                         ),
//                       )),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
