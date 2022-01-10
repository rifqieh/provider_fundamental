// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_fundamental/counter_provider.dart';
// import 'package:provider_fundamental/user_provider.dart';
// import 'package:provider_fundamental/weight_provider.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final CounterProvider counterProvider =
//         Provider.of<CounterProvider>(context);

//     final WeightProvider weightProvider = Provider.of<WeightProvider>(context);

//     final UserProvider userProvider = Provider.of<UserProvider>(context);

//     return Scaffold(
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           // FloatingActionButton(
//           //   onPressed: () {
//           //     counterProvider.addValue();
//           //   },
//           //   child: Icon(
//           //     Icons.add,
//           //   ),
//           // ),
//           // const SizedBox(
//           //   height: 10,
//           // ),
//           // FloatingActionButton(
//           //   backgroundColor: Colors.red,
//           //   onPressed: () {
//           //     counterProvider.reduceValue();
//           //   },
//           //   child: Icon(
//           //     Icons.remove,
//           //   ),
//           // ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Text(
//             //   counterProvider.currentValue.toString(),
//             //   style: TextStyle(
//             //     fontSize: 100,
//             //   ),
//             // ),
//             // const SizedBox(
//             //   height: 10,
//             // ),
//             // Text(
//             //   counterProvider.isEven ? 'Genap' : 'Ganjil',
//             //   style: TextStyle(
//             //     fontSize: 30,
//             //   ),
//             // ),

//             // const SizedBox(
//             //   height: 50,
//             // ),
//             // Slider(
//             //   min: 10,
//             //   max: 100,
//             //   value: weightProvider.weight,
//             //   onChanged: (value) {
//             //     weightProvider.changeWeight(value);
//             //   },
//             // ),
//             // Text(
//             //   weightProvider.weight.toString(),
//             //   style: TextStyle(
//             //     fontSize: 30,
//             //   ),
//             // ),

//             userProvider.user == null
//                 ? ElevatedButton(
//                     onPressed: () {
//                       userProvider.getUser();
//                     },
//                     child: Text(
//                       'Login',
//                     ),
//                   )
//                 : Text(
//                     'Halo ${userProvider.user!.name}',
//                     style: TextStyle(
//                       fontSize: 20,
//                     ),
//                   ),
//           ],
//         ),
//       ),
//     );
//   }
// }
