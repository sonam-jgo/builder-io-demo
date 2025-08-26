import 'package:flutter/material.dart';
import '../models/pet.dart';

class PetCategoryCard extends StatelessWidget {
  final Pet pet;
  final VoidCallback? onTap;

  const PetCategoryCard({
    super.key,
    required this.pet,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Pet header with name and arrow
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  pet.name,
                  style: TextStyle(
                    fontSize: isSmallScreen ? 14 : 15,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF3F3F3F),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 4),
                child: Icon(
                  Icons.arrow_outward,
                  size: isSmallScreen ? 20 : 22,
                  color: const Color(0xFF101828),
                ),
              ),
            ],
          ),
          SizedBox(height: isSmallScreen ? 4 : 5),
          // Pet description
          Text(
            pet.description,
            style: TextStyle(
              fontSize: isSmallScreen ? 11 : 12,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF919191),
              height: 1.6,
            ),
          ),
          SizedBox(height: isSmallScreen ? 16 : 22),
          // Pet image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: AspectRatio(
              aspectRatio: isSmallScreen ? 16 / 10 : 16 / 9,
              child: Image.network(
                pet.imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    color: Colors.grey[200],
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[200],
                    child: const Center(
                      child: Icon(
                        Icons.image_not_supported,
                        color: Colors.grey,
                        size: 50,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
