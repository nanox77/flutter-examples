var places = [
  Place(
    'Freddy\'s Burger',
    'https://i.pinimg.com/originals/b4/9f/0e/b49f0e9fbe724cd195b2b702569c26ac.jpg',
  ),
  Place(
    'Tino\'s place',
    'https://i.pinimg.com/originals/68/91/32/68913243b81fd78b93aee4fe9e30c865.jpg',
  ),
  Place(
    'Nano\'s Pizza',
    'https://duyt4h9nfnj50.cloudfront.net/resized/b6ced51517b7ceb01de04e777a2132db-w2880-48.jpg',
  ),
];

class Place {
  String name;
  String thumbnail;

  Place(this.name, this.thumbnail);
}
