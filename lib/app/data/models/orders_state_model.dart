class OrdersStateModel{
  final String name_state;

  OrdersStateModel({
    required this.name_state,
  });

  factory OrdersStateModel.fromJson(Map<String, dynamic> json){
    return OrdersStateModel(
      name_state: json['name_state'],
    );
  }

  Map<String, dynamic> toJson() => {
    'name_state': name_state,
  };
}