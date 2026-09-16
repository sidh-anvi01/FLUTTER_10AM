import 'package:flutter/material.dart';
import 'package:myapp/CostomCard.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  final List<ProductItem> products = const [
   ProductItem(
     name: 'Urban Sneakers',
     category: 'Running',
     price: 129.99,
     imageUrl:
         'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=900&q=80',
     rating: 4.8,
     color: Color(0xFFE0F2FE),
   ),
   ProductItem(
     name: 'Aero Smartwatch',
     category: 'Wearables',
     price: 249.0,
     imageUrl:
         'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=900&q=80',
     rating: 4.7,
     color: Color(0xFFDCFCE7),
   ),
   ProductItem(
     name: 'Classic Backpack',
     category: 'Travel',
     price: 89.5,
     imageUrl:
         'https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=900&q=80',
     rating: 4.9,
     color: Color(0xFFFEE2E2),
   ),
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: const Color(0xFFF5F7FF),
     appBar: AppBar(
       elevation: 0,
       backgroundColor: Colors.transparent,
       title: const Text(
         'Featured Products',
         style: TextStyle(
           color: Color(0xFF111827),
           fontWeight: FontWeight.w700,
         ),
       ),
       actions: [
         IconButton(
           onPressed: () {},
           icon: const Icon(Icons.shopping_bag_outlined, color: Color(0xFF111827)),
         ),
       ],
     ),
     body: SafeArea(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: const [
                 Text(
                   'Discover',
                   style: TextStyle(
                     fontSize: 28,
                     fontWeight: FontWeight.w800,
                     color: Color(0xFF111827),
                   ),
                 ),
                 SizedBox(height: 6),
                 Text(
                   'Best picks for your lifestyle',
                   style: TextStyle(
                     fontSize: 15,
                     color: Color(0xFF6B7280),
                   ),
                 ),
               ],
             ),
           ),
           const SizedBox(height: 12),
           Expanded(
             child: ListView(
               padding: const EdgeInsets.only(bottom: 22),
               scrollDirection: Axis.horizontal,
               children: products
                   .map(
                     (product) => CustomProductCard(
                       product: product,
                       onAddToCart: () {},
                     ),
                   )
                   .toList(),
             ),
           ),
         ],
       ),
     ),
   );
  }
}
