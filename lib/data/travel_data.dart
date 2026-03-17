class TravelDestination {
  const TravelDestination({
    required this.id,
    required this.title,
    required this.location,
    required this.category,
    required this.description,
    required this.imageAsset,
    required this.pricePerNight,
    required this.rating,
    required this.highlights,
  });

  final String id;
  final String title;
  final String location;
  final String category;
  final String description;
  final String imageAsset;
  final double pricePerNight;
  final double rating;
  final List<String> highlights;
}

const List<String> travelCategories = <String>[
  'All',
  'City',
  'Nature',
  'Lake',
  'Culture',
  'Hotel',
  'Entertainment',
];

const List<TravelDestination> travelDestinations = <TravelDestination>[
  TravelDestination(
    id: 'kigali-city',
    title: 'Kigali City Tour',
    location: 'Kigali',
    category: 'City',
    description:
        'Explore clean boulevards, modern cafes, art spaces, and vibrant neighborhood markets in the heart of Rwanda.',
    imageAsset: 'lib/pictures/Kigali-City.webp',
    pricePerNight: 95,
    rating: 4.7,
    highlights: <String>['City views', 'Craft markets', 'Coffee spots', 'Night vibes'],
  ),
  TravelDestination(
    id: 'bk-arena',
    title: 'BK Arena Experience',
    location: 'Kigali',
    category: 'Entertainment',
    description:
        'Attend concerts, basketball events, and live entertainment at one of East Africa\'s most iconic venues.',
    imageAsset: 'lib/pictures/Kigali-City.webp',
    pricePerNight: 120,
    rating: 4.8,
    highlights: <String>['Live shows', 'Modern venue', 'Sports events', 'Food court'],
  ),
  TravelDestination(
    id: 'serena-hotel',
    title: 'Kigali Serena Hotel Stay',
    location: 'Kigali',
    category: 'Hotel',
    description:
        'Enjoy a premium hotel stay with resort-style amenities, elegant dining, and easy access to top city attractions.',
    imageAsset: 'lib/pictures/Kigali-City.webp',
    pricePerNight: 210,
    rating: 4.9,
    highlights: <String>['Pool access', 'Luxury rooms', 'Spa service', 'Fine dining'],
  ),
  TravelDestination(
    id: 'lake-kivu',
    title: 'Lake Kivu Escape',
    location: 'Rubavu',
    category: 'Lake',
    description:
        'Relax on scenic shores, enjoy sunset boat rides, and discover one of Africa\'s most beautiful freshwater lakes.',
    imageAsset: 'lib/pictures/Lake-Kivu.webp',
    pricePerNight: 130,
    rating: 4.8,
    highlights: <String>['Beach views', 'Boat rides', 'Sunset decks', 'Lakeside resorts'],
  ),
  TravelDestination(
    id: 'rubavu',
    title: 'Rubavu Waterfront',
    location: 'Rubavu',
    category: 'Lake',
    description:
        'Discover palm-lined waterfront spots, local beach restaurants, and relaxing weekend energy near Lake Kivu.',
    imageAsset: 'lib/pictures/Rubavu.jpg',
    pricePerNight: 90,
    rating: 4.5,
    highlights: <String>['Beachfront', 'Local food', 'Boat tours', 'Family friendly'],
  ),
  TravelDestination(
    id: 'nyungwe',
    title: 'Nyungwe Forest Adventure',
    location: 'Nyamagabe',
    category: 'Nature',
    description:
        'Walk suspended canopy bridges and trek through rich rainforest biodiversity with birds, primates, and waterfalls.',
    imageAsset: 'lib/pictures/Nyungwe-Forest-National-Park.jpg',
    pricePerNight: 175,
    rating: 4.9,
    highlights: <String>['Canopy walk', 'Chimp trekking', 'Bird watching', 'Rainforest trails'],
  ),
  TravelDestination(
    id: 'gishwati',
    title: 'Gishwati-Mukura Park',
    location: 'Rutsiro',
    category: 'Nature',
    description:
        'Visit a restored conservation area where rich greenery and wildlife encounters create a peaceful eco-tourism experience.',
    imageAsset: 'lib/pictures/Gishwati-Mukura-National-Park.jpg',
    pricePerNight: 145,
    rating: 4.6,
    highlights: <String>['Eco tourism', 'Forest walks', 'Conservation trails', 'Wildlife'],
  ),
  TravelDestination(
    id: 'gorilla',
    title: 'Volcanoes Gorilla Trek',
    location: 'Musanze',
    category: 'Nature',
    description:
        'Experience unforgettable mountain gorilla trekking in Rwanda\'s famous volcanic highlands.',
    imageAsset: 'lib/pictures/gorilla.jpg',
    pricePerNight: 320,
    rating: 5.0,
    highlights: <String>['Gorilla permits', 'Guided hike', 'Volcanic scenery', 'Photography'],
  ),
  TravelDestination(
    id: 'musanze-caves',
    title: 'Musanze Caves Tour',
    location: 'Musanze',
    category: 'Culture',
    description:
        'Explore dramatic underground pathways shaped by ancient lava flows in this unique geological site.',
    imageAsset: 'lib/pictures/Musanze-Caves.jpg',
    pricePerNight: 85,
    rating: 4.4,
    highlights: <String>['Lava cave walk', 'Guided tours', 'History talks', 'Cool interiors'],
  ),
  TravelDestination(
    id: 'kings-palace',
    title: 'King\'s Palace Museum',
    location: 'Nyanza',
    category: 'Culture',
    description:
        'Step into Rwanda\'s royal history and discover traditional architecture, artifacts, and cultural storytelling.',
    imageAsset: 'lib/pictures/Kings-Palace-Museum.jpg',
    pricePerNight: 80,
    rating: 4.3,
    highlights: <String>['Royal history', 'Traditional huts', 'Cultural artifacts', 'Guided sessions'],
  ),
  TravelDestination(
    id: 'genocide-memorial',
    title: 'Kigali Genocide Memorial',
    location: 'Kigali',
    category: 'Culture',
    description:
        'A meaningful and educational experience that honors history while promoting peace, healing, and reflection.',
    imageAsset: 'lib/pictures/Kigali-Genocide-Memorial-Rwanda.webp',
    pricePerNight: 60,
    rating: 4.9,
    highlights: <String>['Historical exhibits', 'Memorial gardens', 'Education center', 'Audio tours'],
  ),
  TravelDestination(
    id: 'lake-ihema',
    title: 'Lake Ihema Safari Boat',
    location: 'Akagera',
    category: 'Lake',
    description:
        'Cruise across Lake Ihema and spot hippos, crocodiles, and birds in a stunning East African wetland ecosystem.',
    imageAsset: 'lib/pictures/Lake-Ihema.jpg',
    pricePerNight: 160,
    rating: 4.7,
    highlights: <String>['Safari boat', 'Bird life', 'Hippo sightings', 'Sunrise tours'],
  ),
  TravelDestination(
    id: 'lake-bisoke',
    title: 'Lake Bisoke Hike',
    location: 'Musanze',
    category: 'Nature',
    description:
        'Hike a volcanic trail to a spectacular crater lake surrounded by misty mountain peaks.',
    imageAsset: 'lib/pictures/bisokelake.jpg',
    pricePerNight: 185,
    rating: 4.8,
    highlights: <String>['Crater lake', 'Volcano hike', 'Scenic photos', 'Adventure trails'],
  ),
];
