class SliderModel {
  late String imageAssetPath;
  late String title;
  late String desc;

// setter

  void setImageAssetPath(String getImageAssetPath) {
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
  List<SliderModel> slides = [];

  SliderModel sliderModel = SliderModel();

  //1
  sliderModel.setImageAssetPath("assets/images/food1.png");
  sliderModel.setTitle("Leaf Disease Identification");
  sliderModel.setDesc("By Team Introspectors");
  slides.add(sliderModel);

  sliderModel = SliderModel();

  //2
  sliderModel.setImageAssetPath("assets/images/food2.png");
  sliderModel.setTitle("Capture an image of a plant to identify the disease.");
  sliderModel.setDesc("");
  slides.add(sliderModel);

  sliderModel = SliderModel();

  //3
  sliderModel.setImageAssetPath("assets/images/food3.png");
  sliderModel.setTitle(
      "Know the disease affecting the crop and also find out the solution for the disease.");
  sliderModel.setDesc("");
  slides.add(sliderModel);

  //4
  sliderModel.setImageAssetPath("assets/images/food4.png");
  sliderModel.setTitle(
      "Take necessary actions to eliminate the disease and save your crop from pests and diseases.");
  sliderModel.setDesc("");
  slides.add(sliderModel);

  sliderModel = SliderModel();

  return slides;
}
