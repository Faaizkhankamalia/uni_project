class BookRoomModel {
  String? picture;
  String? name;
  String? email;
  String? doc;


  BookRoomModel({
    this.picture,
    this.name,
    this.email,
    this.doc,
  });

  Map<String, dynamic> toJson() {
    return {
      "picture": this.picture,
      "name": this.name,
      "email": this.email,
      "doc": this.doc,
    };
  }

  factory BookRoomModel.fromJson(Map<String, dynamic> json) {
    return BookRoomModel(
      picture: json["picture"] ?? "",
      name: json["name"] ?? "",
      email: json["email"] ?? "",

      doc: json["doc"] ?? "",

    );
  }
}
