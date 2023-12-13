class TablesModel{
  final String id_users;
  final bool table_state;
  final String table_qr_code;

  TablesModel({
    required this.id_users,
    required this.table_state,
    required this.table_qr_code
  });
  factory TablesModel.fromJson(Map<String, dynamic> json){
    return TablesModel(
      id_users: json['id_users'],
      table_state: json['table_state'],
      table_qr_code: json['table_qr_code'],
    );
  }
  Map<String, dynamic> ToJson() => {
    'id_users': id_users,
    'table_state': table_state,
    'table_qr_code': table_qr_code,
  };
}