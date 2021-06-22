class Movies {
  String title;
  String cover;
  String date;
  String genre;
  String rate;
  String desc;

  Movies({
    required this.title,
    required this.cover,
    required this.date,
    required this.genre,
    required this.rate,
    required this.desc,
  });
}

var movieList = [
  Movies(
      title: "Naruto Shippuden",
      cover: "images/naruto.jpg",
      date: "February 15, 2007",
      genre: "Action & Adventure, Animation, Comedy, Sci-Fi & Fantasy",
      rate: "8.1",
      desc:
          "Naruto Shippuuden is the continuation of the original animated TV series Naruto.The story revolves around an older and slightly more matured Uzumaki Naruto and his quest to save his friend Uchiha Sasuke from the grips of the snake-like Shinobi, Orochimaru. After 2 and a half years Naruto finally returns to his village of Konoha, and sets about putting his ambitions to work, though it will not be easy, as He has amassed a few (more dangerous) enemies, in the likes of the shinobi organization; Akatsuki."),
  Movies(
      title: "Avengers: Infinity War",
      cover: "images/infinity_war.jpg",
      date: "April 25, 2018",
      genre: "Adventure, Action, Science Fiction",
      rate: "9.0",
      desc:
          "As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. Everything the Avengers have fought for has led up to this moment - the fate of Earth and existence itself has never been more uncertain."),
  Movies(
      title: "Spiderman",
      cover: "images/spiderman.jpg",
      date: "May 1, 2002",
      genre: "Fantasy, Action",
      rate: "7.8",
      desc:
          "After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers to become the Amazing superhero known as Spider-Man."),
  Movies(
      title: "Overlord",
      cover: "images/overlord.jpg",
      date: "November 1, 2018",
      genre: "Horror, war",
      rate: "8.2",
      desc:
          "France, June 1944. On the eve of D-Day, some American paratroopers fall behind enemy lines after their aircraft crashes while on a mission to destroy a radio tower in a small village near the beaches of Normandy. After reaching their target, the surviving paratroopers realise that, in addition to fighting the Nazi troops that patrol the village, they also must fight against something else."),
  Movies(
      title: "Robin Hood",
      cover: "images/robin_hood.jpg",
      date: "November 21, 2018",
      genre: "Adventure, Action, Thriller",
      rate: "9.3",
      desc:
          "A war-hardened Crusader and his Moorish commander mount an audacious revolt against the corrupt English crown."),
  Movies(
      title: "Ncis",
      cover: "images/ncis.jpg",
      date: "September 23, 2003",
      genre: "Crime, Action & Adventure, Drama",
      rate: "8.4",
      desc:
          "From murder and espionage to terrorism and stolen submarines, a team of special agents investigates any crime that has a shred of evidence connected to Navy and Marine Corps personnel, regardless of rank or position."),
  Movies(
      title: "Riverdale",
      cover: "images/riverdale.jpg",
      date: "January 26, 2017",
      genre: "Mystery, Drama, Crime",
      rate: "7.0",
      desc:
          "Set in the present, the series offers a bold, subversive take on Archie, Betty, Veronica and their friends, exploring the surreality of small-town life, the darkness and weirdness bubbling beneath Riverdale’s wholesome facade."),
];
