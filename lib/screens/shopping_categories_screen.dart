import 'package:flutter/material.dart';
import '../models/pet.dart';
import '../widgets/pet_category_card.dart';

class ShoppingCategoriesScreen extends StatelessWidget {
  const ShoppingCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;
    
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(
                maxWidth: isSmallScreen ? screenWidth - 32 : 494,
              ),
              margin: EdgeInsets.all(isSmallScreen ? 16 : 20),
              padding: EdgeInsets.fromLTRB(
                isSmallScreen ? 16 : 23,
                isSmallScreen ? 20 : 26,
                isSmallScreen ? 16 : 23,
                isSmallScreen ? 24 : 36,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xFFCFCFCF)),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
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
                      Text(
                        'Shopping categories',
                        style: TextStyle(
                          fontSize: isSmallScreen ? 18 : 22,
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
                          Flexible(
                            child: Text(
                              'Pets and animals',
                              style: TextStyle(
                                fontSize: isSmallScreen ? 13 : 15,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF898989),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: isSmallScreen ? 12 : 15,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFEEF4FF),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Text(
                              'Playful',
                              style: TextStyle(
                                fontSize: isSmallScreen ? 10 : 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF3538CD),
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
      ),
    );
  }
}
