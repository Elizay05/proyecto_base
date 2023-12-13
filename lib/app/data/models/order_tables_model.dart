class OrdersTablesModel{
  final String id_tables;
  final String id_products;
  final int quantity;

  OrdersTablesModel({
    required this.id_tables,
    required this.id_products,
    required this.quantity
  });
  factory OrdersTablesModel.fromJson(Map<String, dynamic> json){
    return OrdersTablesModel(
      id_tables: json['id_tables'],
      id_products: json['id_products'],
      quantity: json['quantity'],
    );
  }
  Map<String, dynamic> ToJson() => {
    'id_tables': id_tables,
    'id_products': id_products,
    'quantity': quantity,
  };
}