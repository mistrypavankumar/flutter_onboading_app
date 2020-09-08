class SliderModel {
  String imageAssetPath;
  String title;
  String desc;

  //Creating a constructor
  SliderModel({
    this.imageAssetPath,
    this.title,
    this.desc,
  });

  // setter
  void setImageAssetpath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  // getter
  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

// providing data to the class using list

List<SliderModel> getSlides() {
  //creating a empty list
  List<SliderModel> slides = List<SliderModel>();

  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc(
      "Discover Restaurants offering the best fast food food near you on Foodwa");
  sliderModel.setTitle("search");
  sliderModel.setImageAssetpath("assets/illustration.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc(
      "Our veggie plan is filled with delicious seasonal vegetables, whole grains, beautiful cheeses and vegetarian proteins");
  sliderModel.setTitle("Order");
  sliderModel.setImageAssetpath("assets/illustration2.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc(
      "Food delivery or pickup from local restaurants, Explore restaurants that deliver near you.");
  sliderModel.setTitle("Eat");
  sliderModel.setImageAssetpath("assets/illustration3.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}
