import './Entity.dart';

class Ship extends Entity {
  @override
  // ignore: overridden_fields
  String? sysUuid;
  String type;
  Map<String, double> position;
  Map<String, int> size;
  double rotation;
  String imagePath;

  Ship(this.type,
      [this.sysUuid,
      this.size = const {"height": 150, "widtdh": 150},
      this.position = const {"x": 0.0, "y": 1.1},
      this.rotation = 4.7,
      this.imagePath = "lib/images/good_ship.png"])
      : super(sysUuid: sysUuid);

  void setRotation(String direction) {
    switch (direction) {
      case "up":
        rotation = 4.7;
        break;
      case "rigth":
        rotation = 0;
        break;
      case "down":
        rotation = 1.55;
        break;
      case "left":
        rotation = 3.1;
        break;
      default:
        rotation = 1;
        break;
    }
  }

  void doPropel(currentPosition) {
    currentPosition += 0.1;
  }
}
