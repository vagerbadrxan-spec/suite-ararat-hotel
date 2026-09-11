class RoomType {
  final String id;
  final String nameKey;
  final double? price;
  final String currency;
  final String? imageUrl;

  const RoomType({
    required this.id,
    required this.nameKey,
    this.price,
    this.currency = 'USD',
    this.imageUrl,
  });
}

const defaultRooms = <RoomType>[
  RoomType(id: 'single', nameKey: 'roomSingle'),
  RoomType(id: 'double', nameKey: 'roomDouble'),
  RoomType(id: 'triple', nameKey: 'roomTriple'),
  RoomType(id: 'roomHall', nameKey: 'roomHall'),
  RoomType(id: 'apartment', nameKey: 'roomApartment'),
];
