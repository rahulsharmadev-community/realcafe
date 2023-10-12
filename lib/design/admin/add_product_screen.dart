// import 'package:flutter/material.dart';
// import 'package:realcafe/logic/IOT/product_request.dart';
// import 'package:realcafe/logic/objects/product.dart';

// class AddProductScreen extends StatefulWidget {
//   const AddProductScreen({Key? key}) : super(key: key);

//   @override
//   State<AddProductScreen> createState() => _AddProductScreenState();
// }

// class _AddProductScreenState extends State<AddProductScreen> {
//   Product product = Product.empty();
//   textfield(
//           {String labelText = '',
//           String hintText = '',
//           TextInputType keyboardType = TextInputType.text,
//           TextEditingController? editingController,
//           required Function(String) onSubmitted}) =>
//       TextField(
//         controller: editingController,
//         keyboardType: keyboardType,
//         onChanged: onSubmitted,
//         decoration: InputDecoration(
//           labelText: labelText,
//           hintText: hintText,
//           border: InputBorder.none,
//         ),
//       );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text('Add Product')),
//         body: ListView(padding: const EdgeInsets.all(8.0), children: [
//           textfield(
//             labelText: 'Product Name',
//             hintText: 'eg. Samsung Galaxy S20 FE 5G',
//             onSubmitted: (p0) =>
//                 setState(() => product = product.copyWith(title: p0)),
//           ),
//           textfield(
//             labelText: 'Shot Description',
//             hintText:
//                 'eg. (Cloud Navy, 8GB RAM, 128GB Storage) with No Cost EMI & Additional Exchange Offers',
//             onSubmitted: (p0) =>
//                 setState(() => product = product.copyWith(shotDescription: p0)),
//           ),
//           textfield(
//             labelText: 'Long Description',
//             hintText:
//                 'eg. ● 5G Ready powered by Qualcomm Snapdragon 865 Octa-Core processor, 8GB RAM, 128GB internal memory expandable up to 1TB, Android 11.0 operating system and dual SIM\n'
//                 '● Triple Rear Camera Setup - 12MP (Dual Pixel) OIS F1.8 Wide Rear Camera + 8MP OIS Tele Camera + 12MP Ultra Wide | 30X Space Zoom, Single Take & Night Mode | 32MP F2.2 Front Punch Hole Camera',
//             keyboardType: TextInputType.multiline,
//             onSubmitted: (p0) =>
//                 setState(() => product = product.copyWith(longDescription: p0)),
//           ),
//           textfield(
//             labelText: 'Unit Type',
//             hintText: 'eg. 4 pic',
//             onSubmitted: (p0) =>
//                 setState(() => product = product.copyWith(unitType: p0)),
//           ),
//           textfield(
//             labelText: 'Category',
//             hintText: 'eg. 4 pic',
//             onSubmitted: (p0) =>
//                 setState(() => product = product.copyWith(category: p0)),
//           ),
//           textfield(
//             labelText: 'Image Url',
//             hintText: 'eg. http//image.png',
//             onSubmitted: (p0) =>
//                 setState(() => product = product.copyWith(image: p0)),
//           ),
//           textfield(
//             labelText: 'Rupess',
//             hintText: 'eg. 500',
//             onSubmitted: (p0) => setState(
//                 () => product = product.copyWith(price: double.parse(p0))),
//           ),
//           ElevatedButton(
//               onPressed: () async => await ProductRequest.post(product),
//               child: const Text('Submit'))
//         ]));
//   }
// }
