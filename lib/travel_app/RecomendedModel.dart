class RecommendedModel {
  String name;
  String image;

  RecommendedModel(this.name, this.image);
}

List<RecommendedModel> recommendedList = recommendedData.map((e) =>
    RecommendedModel(e['name'], e['image'])).toList();

var recommendedData = [
  {
    "name": "Testing 1",
    "image": "https://images.pexels.com/photos/2007401/pexels-photo-2007401.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
  },
  {
    "name": "Testing 2",
    "image": "https://images.pexels.com/photos/2174656/pexels-photo-2174656.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
  },
  {
    "name": "Testing 3",
    "image": "https://images.pexels.com/photos/2007401/pexels-photo-2007401.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
  },
  {
    "name": "Testing 4",
    "image": "https://images.pexels.com/photos/2174656/pexels-photo-2174656.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
  },
];