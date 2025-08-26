import 'package:flutter/material.dart';
import '../models/pet.dart';
import '../widgets/pet_category_card.dart';

class ShoppingCategoriesScreen extends StatelessWidget {
  const ShoppingCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            constraints: const BoxConstraints(maxWidth: 494),
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.fromLTRB(23, 26, 23, 36),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xFFCFCFCF)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    const Text(
                      'Shopping categories',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        height: 1.42,
                      ),
                    ),
                    const SizedBox(height: 4),
                    // Subtitle with badge
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Pets and animals',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF898989),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEEF4FF),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Text(
                            'Playful',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF3538CD),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: isSmallScreen ? 16 : 22),
                // Divider
                Container(
                  height: 1,
                  color: const Color(0xFFE3E3E3),
                ),
                SizedBox(height: isSmallScreen ? 16 : 22),
                // Pet categories list
                ...PetData.pets.asMap().entries.map((entry) {
                  final index = entry.key;
                  final pet = entry.value;
                  final isLast = index == PetData.pets.length - 1;

                  return Column(
                    children: [
                      PetCategoryCard(
                        pet: pet,
                        onTap: () {
                          // Handle pet category tap
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('${pet.name} category selected'),
                              duration: const Duration(seconds: 2),
                            ),
                          );
                        },
                      ),
                      if (!isLast) ...[
                        SizedBox(height: isSmallScreen ? 16 : 22),
                        Container(
                          height: 1,
                          color: const Color(0xFFE3E3E3),
                        ),
                        SizedBox(height: isSmallScreen ? 16 : 22),
                      ],
                    ],
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
