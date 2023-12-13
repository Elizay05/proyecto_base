class ReservesModel{
  final String id_users;
  final String id_events;
  final String id_tables;
  final DateTime reserve_date;
  final String reserve_qr_code;

  ReservesModel({
    required this.id_users,
    required this.id_events,
    required this.id_tables,
    required this.reserve_date,
    required this.reserve_qr_code,
  });

  factory ReservesModel.fromJson(Map<String, dynamic> json){
    return ReservesModel(
      id_users: json['id_users'],
      id_events: json['id_events'],
      id_tables: json['id_tables'],
      reserve_date: json['reserve_date'],
      reserve_qr_code: json['reserve_qr_code'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id_users': id_users,
    'id_events': id_events,
    'id_tables': id_tables,
    'reserve_date': reserve_date,
    'reserve_qr_code': reserve_qr_code,
  };
}