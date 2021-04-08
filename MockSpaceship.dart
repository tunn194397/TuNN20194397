import 'Spacecraft.dart';

class MockSpaceship implements Spacecraft{
  @override
  DateTime launchDate;

  @override
  String name;

  @override
  void describe() {
    print(' This is one MockSpaceship');
  }

  @override
  int get launchYear => throw UnimplementedError();



}

abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('============');
    describe();
    print('============');
  }
}