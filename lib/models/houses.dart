class Houses {
  String imgUrl;
  String name;
  String location;
  num price;
  String area;
  num score;
  String desc;
  String owner;
  String imgOwner;
  String phone;

  Houses(this.imgUrl, this.name, this.location, this.price, this.area,
      this.score, this.desc, this.owner, this.imgOwner, this.phone);

  static List<Houses> meetUp() {
    return [
      Houses(
          'https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923__340.jpg',
          'One Star',
          'Nairobi',
          1200000,
          '125km',
          4.8,
          'This is specifically meant for meetings, You are allowed to pay before entry and also book earlier in order to recieve early consideration',
          'Bryant Edu',
          'https://cdn.pixabay.com/photo/2018/01/15/07/52/woman-3083396__340.jpg',
          '0797900350')
    ];
  }

  // function to generate rental houses
  static List<Houses> rental() {
    return [
      Houses(
          'https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070__340.jpg',
          'Dura court',
          'Rhundah',
          1200000,
          '112 km',
          4.3,
          'This is a four bedroom rental',
          'Mulati Nelvine',
          'https://cdn.pixabay.com/photo/2016/11/29/13/14/attractive-1869761__340.jpg',
          '0748655165'),
      Houses(
          'https://cdn.pixabay.com/photo/2014/07/10/17/18/large-home-389271__340.jpg',
          'The High Court',
          'Nakuru',
          1200000,
          '213 km',
          4.5,
          'this is a six bed room house',
          'Mulati Brian',
          'https://cdn.pixabay.com/photo/2016/11/18/19/07/happy-1836445__340.jpg',
          '0717105986'),
    ];
  }

  // generate luxurous houses
  static List<Houses> luxury() {
    return [
      Houses(
          'https://cdn.pixabay.com/photo/2017/07/09/03/19/home-2486092__340.jpg',
          'Dura court',
          'Rhundah',
          1400000,
          '112 km',
          4.3,
          'This is a four bedroom rental',
          'Luchu Scovya',
          'https://cdn.pixabay.com/photo/2018/01/15/07/52/woman-3083401__340.jpg',
          '0797900350'),
      Houses(
          'https://cdn.pixabay.com/photo/2017/03/28/12/13/chairs-2181968__340.jpg',
          'The High Court',
          'Nakuru',
          1900000,
          '213 km',
          4.5,
          'this is a six bed room house',
          'EdelQuin Quin',
          'https://cdn.pixabay.com/photo/2017/06/09/17/11/model-2387582__340.jpg',
          '0717105986'),
    ];
  }

  // to generate resort houses
  static List<Houses> resort() {
    return [
      Houses(
          'https://cdn.pixabay.com/photo/2022/01/13/07/05/house-6934535__340.jpg',
          'Dura court',
          'Rhundah',
          1100000,
          '112 km',
          4.3,
          'This is a four bedroom rental',
          'Chepkwony',
          'https://cdn.pixabay.com/photo/2018/02/16/14/38/portrait-3157821__340.jpg',
          '0797900350'),
      Houses(
          'https://cdn.pixabay.com/photo/2020/10/18/09/16/bedroom-5664221__340.jpg',
          'The High Court',
          'Nakuru',
          1500000,
          '213 km',
          4.5,
          'this is a six bed room house',
          'Mutai Abby',
          'https://cdn.pixabay.com/photo/2018/03/01/14/57/portrait-3190849__340.jpg',
          '0797900350'),
    ];
  }
}
