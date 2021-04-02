var albums = [
  Album('Nirvana', 'https://images-na.ssl-images-amazon.com/images/I/715zRWC7sGL._AC_SL1500_.jpg'),
  Album('Queen', 'https://images-na.ssl-images-amazon.com/images/I/71JuNbWD2bL._SL1400_.jpg'),
  Album('The Beatles',
      'https://los40es00.epimg.net/los40/imagenes/2018/09/26/los40classic/1537954405_106365_1569490515_noticia_normal.jpg'),
  Album('Metallica', 'https://resources.claroshop.com/imagenes-sanborns-ii/1200/602498653258.jpg'),
  Album('The Ramones', 'https://images-na.ssl-images-amazon.com/images/I/9178-Ff7hGL._AC_SX679_.jpg'),
  Album('AC/DC', 'https://images-na.ssl-images-amazon.com/images/I/71x8%2Bsn000L._SL1500_.jpg'),
];

var podcasts = [
  Album('Flutter', 'https://logowik.com/content/uploads/images/flutter5786.jpg'),
  Album('Firebase', 'https://www.codigors.com/images/logoLenguajes/firebase.jpg'),
  Album('Kotlin', 'https://sdtimes.com/wp-content/uploads/2019/10/1200px-Kotlin-logo.svg_.png'),
];

class Album {
  String name;
  String thumbnail;

  Album(this.name, this.thumbnail);
}
