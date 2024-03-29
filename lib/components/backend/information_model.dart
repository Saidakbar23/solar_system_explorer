class InformationModel {
  late String title;
  late String content;

  InformationModel({required this.title, required this.content});

  InformationModel.fromJson(Map<String, dynamic> parsedJSON)
      : title = parsedJSON['title'],
        content = parsedJSON['content'];
}
