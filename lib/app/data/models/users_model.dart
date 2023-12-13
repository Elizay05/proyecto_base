class UsersModel{
  final String last_name;
  final String first_name;
  final String birth_date;
  final bool? state;
  final String cell_phone;
  final String cedula;
  final String? photo_path;

  UsersModel({
    required this.last_name,
    required this.first_name,
    required this.birth_date,
    this.state,
    required this.cell_phone,
    required this.cedula,
    this.photo_path,
  });

  factory UsersModel.fromJson(Map<String, dynamic> json){
    return UsersModel(
      last_name: json['last_name'],
      first_name: json['first_name'],
      birth_date: json['birth_date'],
      state: json['state'],
      cell_phone: json['cell_phone'],
      cedula: json['cedula'],
      photo_path: json['photo_path'],
    );
  }

  Map<String, dynamic> toJson() => {
      'last_name': last_name,
      'first_name': first_name,
      'birth_date': birth_date,
      'state': state,
      'cell_phone': cell_phone,
      'cedula': cedula,
      'photo_path': photo_path,
    };
}
