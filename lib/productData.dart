class ProductData {
  String productName;
  num productCount;
  num kirimPrice;
  num sotuvPrice;
  String barCode;
  bool isDeleted;
  String comment;

  ProductData(this.productName, this.barCode, this.kirimPrice,
      this.productCount, this.sotuvPrice,this.comment,this.isDeleted);
}
