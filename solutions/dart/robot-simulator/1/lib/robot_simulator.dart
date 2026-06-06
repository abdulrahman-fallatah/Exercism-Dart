import 'orientation.dart';
import 'position.dart';

class Robot{
  Position position;
  Orientation orientation;

  Robot(this.position, this.orientation);

  void move(String input){
    List<String> commands = input.split('');
    for(var command in commands){
      switch(command){
      case'R':
      orientation == Orientation.north ? orientation = Orientation.east
      : orientation == Orientation.east ? orientation = Orientation.south
      : orientation == Orientation.south ? orientation = Orientation.west
      : orientation = Orientation.north;
      break;
      case'L':
      orientation == Orientation.north ? orientation = Orientation.west
      : orientation == Orientation.west ? orientation = Orientation.south
      : orientation == Orientation.south ? orientation = Orientation.east
      : orientation = Orientation.north;
      break;
      case'A':
      if(orientation == Orientation.north) position.y++;
      else if(orientation == Orientation.east) position.x++;
      else if(orientation == Orientation.south) position.y--;
      else if(orientation == Orientation.west) position.x--;
      default:
      throw ArgumentError("Enter 'R', 'L' or 'A'");
      }
    }    
  }
}