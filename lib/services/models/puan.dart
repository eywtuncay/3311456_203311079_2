class puan {
  final int id;
  final String name;

  puan({required this.id, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }
  @override
  String toString() {
    return 'Puan{id: $id, name: $name}';
  }
}
