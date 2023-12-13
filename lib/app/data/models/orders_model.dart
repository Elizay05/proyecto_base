class OrdersModel{
  final String id_tables;
  final String id_products;
  final String id_state;
  final String details;
  final DateTime order_date;

  OrdersModel({
    required this.id_tables,
    required this.id_products,
    required this.id_state,
    required this.details,
    required this.order_date,
  });

  factory OrdersModel.fromJson(Map<String, dynamic> json){
    return OrdersModel(
      id_tables: json['id_tables'],
      id_products: json['id_products'],
      id_state: json['id_state'],
      details: json['details'],
      order_date: json['order_date'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id_tables': id_tables,
    'id_products': id_products,
    'id_state': id_state,
    'details': details,
    'order_date': order_date,
  };
}