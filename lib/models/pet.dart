class Pet {
  final String name;
  final String description;
  final String imageUrl;

  const Pet({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

class PetData {
  static const List<Pet> pets = [
    Pet(
      name: 'French Bulldog',
      description: 'The French Bulldog is a French breed of companion dog or toy dog. Frenchies are known for being pretty laid back and adaptable.',
      imageUrl: 'https://api.builder.io/api/v1/image/assets/TEMP/54c2775d586f43338a83beda4bf6b53594c67dbd?width=896',
    ),
    Pet(
      name: 'Beagle',
      description: 'The beagle is a breed of small scent hound, similar in appearance to the much larger foxhound.',
      imageUrl: 'https://api.builder.io/api/v1/image/assets/TEMP/fc83f30451af56bc303310694e9e6ac243cb8fcc?width=896',
    ),
    Pet(
      name: 'Labrador Retriever',
      description: 'The Labrador Retriever or simply Labrador is a British breed of retriever gun dog.',
      imageUrl: 'https://api.builder.io/api/v1/image/assets/TEMP/19720d3311c7ff573d087f82f58592e80a5093f7?width=896',
    ),
  ];
}
