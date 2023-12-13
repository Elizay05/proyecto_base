class RolModel {

  final String name_rol;

  RolModel({
    required this.name_rol,
  });

  factory RolModel.fromJson(Map<String, dynamic> json){
    return RolModel(
      name_rol: json['name_rol'],
    );
  }

  Map<String, dynamic> toJson() => {
    'name_rol': name_rol,
  };
}