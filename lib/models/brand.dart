class Brand {
  int id;
  String name;

  Brand();
  Brand.withoutId(this.name);
  Brand.withId(this.id, this.name);

  Brand.fromJson(Map json) {
    this.id = json["id"];
    this.name = json["name"];
  }

  Map toJson() {
    return {
      "id": this.id,
      "name": this.name,
    };
  }
}
