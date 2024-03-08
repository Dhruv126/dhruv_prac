class EndPoints {
  static const String BASE_URL = "https://api.thecatapi.com";
  static const String breed = "$BASE_URL/v1/breeds?page=1&limit=50";
  static String imageUrl (referenceImageId) => "https://cdn2.thecatapi.com/images/$referenceImageId.jpg";
}