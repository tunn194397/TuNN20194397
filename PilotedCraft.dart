import 'Pilots.dart';
import 'Spacecraft.dart';

class PilotedCraft extends Spacecraft with Pilots{
  PilotedCraft( String name, DateTime launchDate) : super(name, launchDate);

}