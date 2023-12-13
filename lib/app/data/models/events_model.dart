class EventsModel{
  final String event_name;
  final DateTime event_date;
  final String description;
  final String event_photo;

  EventsModel({
    required this.event_name,
    required this.event_date,
    required this.description,
    required this.event_photo,
  });
  factory EventsModel.fromJson(Map<String, dynamic> json){
    return EventsModel(
      event_name: json['event_name'],
      event_date: json['event_date'],
      description: json['description'],
      event_photo: json['event_photo'],
    );
  }

  Map<String, dynamic> ToJson() => {
    'event_name': event_name,
    'event_date': event_date,
    'description': description,
    'event_photo': event_photo,
  };
}