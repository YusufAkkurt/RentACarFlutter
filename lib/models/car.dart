class Car {
  int id;
  int brandId;
  int colorId;
  int modelYear;
  double dailyPrice;
  String description;
  int findexPoint;

  Car(this.id, this.brandId, this.colorId, this.modelYear, this.dailyPrice,
      this.description, this.findexPoint);

  Car.fromJson(Map json) {
    this.id = json["id"];
    this.brandId = json["brandId"];
    this.colorId = json["colorId"];
    this.modelYear = json["modelYear"];
    this.dailyPrice = json["dailyPrice"];
    this.description = json["description"];
    this.findexPoint = json["findexPoint"];
  }

  Map toJson() {
    Map carJsonFormat = {
      "id": this.id,
      "brandId": this.brandId,
      "colorId": this.colorId,
      "modelYear": this.modelYear,
      "dailyPrice": this.dailyPrice,
      "description": this.description,
      "findexPoint": this.findexPoint,
    };

    return carJsonFormat;
  }
}
