class FormationPart {
  String? name;
  String? email;
  String? lastname;
  String? phoneNumber;
  bool? isSelected = false;

  FormationPart({
    this.name,
    this.email,
    this.lastname,
    this.phoneNumber,
    this.isSelected
  });

  factory FormationPart.fromJson(Map<String, dynamic> json) {
    return FormationPart(
        name: json['name'],
        email:json['email'],
        lastname:json['lastname'],
        phoneNumber:json['phoneNumber'],
        isSelected: false
    );
  }

  static List<FormationPart> fromJsonArray(List<dynamic> jsonParts) {
    List<FormationPart> parts = [];

    jsonParts.forEach((jsonData) {
      parts.add(FormationPart.fromJson(jsonData));
    });

    return parts;
  }
}