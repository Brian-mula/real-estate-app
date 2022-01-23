class Houses {
  String name;
  String location;
  String area;
  num score;
  String desc;
  String phone;
  Houses(
      this.name, this.location, this.area, this.score, this.desc, this.phone);

  static List<Houses> meetUp() {
    return [
      Houses('One Star', 'Nairobi', '125km', 4.8,
          'This is specifically meant for meetings', '0718775512')
    ];
  }

  // function to generate rental houses
  static List<Houses> rental() {
    return [
      Houses('Dura court', 'Rhundah', '112 km', 4.3,
          'This is a four bedroom rental', '0717105986'),
      Houses('The High Court', 'Nakuru', '213 km', 4.5,
          'this is a six bed room house', '0717105986'),
    ];
  }

  // generate luxurous houses
  static List<Houses> luxury() {
    return [
      Houses('Dura court', 'Rhundah', '112 km', 4.3,
          'This is a four bedroom rental', '0717105986'),
      Houses('The High Court', 'Nakuru', '213 km', 4.5,
          'this is a six bed room house', '0717105986'),
    ];
  }

  // to generate resort houses
  static List<Houses> resort() {
    return [
      Houses('Dura court', 'Rhundah', '112 km', 4.3,
          'This is a four bedroom rental', '0717105986'),
      Houses('The High Court', 'Nakuru', '213 km', 4.5,
          'this is a six bed room house', '0717105986'),
    ];
  }
}
