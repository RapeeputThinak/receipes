class Recipe {
  String imgLabel; 
  String imageUrl;

  Recipe(this.imgLabel,this.imageUrl);

  static List<Recipe> samples =
  [
    Recipe('Butternut squash mac and cheese','assets/images/1.webp'),
    Recipe('Squash and sweet potato soup','assets/images/2.webp'),
    Recipe('Quince pudding','assets/images/3.webp'),
    Recipe('Cumin spiced swede and gouda pasties','assets/images/4.webp'),
  ];
}
