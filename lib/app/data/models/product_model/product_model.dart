class ProductModel {
  final String title;
  final String imagePath;
  final String buttonText;

  ProductModel(
      {required this.title,
      required this.imagePath,
      this.buttonText = 'Shop Now'});
}
