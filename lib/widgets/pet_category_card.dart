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
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Pet header with name and arrow
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                pet.name,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF3F3F3F),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 4),
                child: const Icon(
                  Icons.arrow_outward,
                  size: 22,
                  color: Color(0xFF101828),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          // Pet description
          Text(
            pet.description,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF919191),
              height: 1.6,
            ),
          ),
          const SizedBox(height: 22),
          // Pet image
          Container(
            height: 174,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(pet.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
