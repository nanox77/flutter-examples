final desserts = [
  DessertSection('Cakes', 'https://www.cocinayvino.com/wp-content/uploads/2016/12/50966188_l-696x464.jpg'),
  DessertSection('Dessert and sweet', 'https://i.redd.it/pclcxx7yat731.jpg'),
  DessertSection('Cookies and pastries',
      'https://www.whats4eats.com/files/course-desserts-macarons-flickr-68711844%40N07-Michael-Stern-15204286153-4x3.jpg'),
  DessertSection(
      'Salty', 'https://www.modernhoney.com/wp-content/uploads/2019/07/Chocolate-Caramel-Pretzel-Bark-9.jpg'),
];

class DessertSection {
  String title;
  String thumbnail;

  DessertSection(this.title, this.thumbnail);
}
