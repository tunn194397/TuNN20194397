
import 'Spacecraft.dart';

var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = [ ' Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tag' : ['Saturn']
// 'url' : ' //path/to/saturn.jgp'
};

var voyager = Spacecraft('Voyager I', DateTime(1977,9,5));
var voyager3 = Spacecraft.unlaunched('Voyager III');

void main() {
  print('Hello, World');

  if ( year >= 2001) {
    print('21st century');
  } else if ( year >= 1901) {
    print('20th century');
  } /* Neu year > 2001 thi in ra 21st century neu khong thi in ra 19th century */

  for ( var object in flybyObjects) {
    print(object);
  }

  for ( int month = 1; month <= 12; month ++) {
    print(month);
  }
  while ( year < 2000) {
    year ++;
    print(year);
  }

  print(fibonacci(10));

  flybyObjects.where((name) => name.contains('turn')).forEach(print);

  voyager.describe();
  voyager3.describe();
}

int fibonacci( int n ) {
  if ( n == 0 || n == 1) return n;
  return ( fibonacci(n-1) + fibonacci(n-2));
}
