class Spacecraft {
  String name;
  DateTime launchDate;

  Spacecraft( this.name, this.launchDate) ;

  Spacecraft.unlaunched(String name) : this(name, null);

  Spacecraft.full(String name, DateTime launchTime) : this(name,launchTime);

  int get launchYear => launchDate?.year;

  void describe() {
    print('Spacecraft :$name');
    var launchDate = this.launchDate;
    if ( launchDate != null) {
      int year = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launch: $launchYear ( $year years ago )');
    }
    else {
      print('Unlaunched');
    }


  }


}