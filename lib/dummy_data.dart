import './models/story.dart';

class DummyData {
  final List<Story> _items = [
    Story('Jake Peralta', 'assets/image/jake.jpg'),
    Story('Amy Santiago', 'assets/image/amy.jpg'),
    Story('Raymond Holt', 'assets/image/holt.jpg'),
    Story('Rosa Diaz', 'assets/image/rosa.jpg'),
    Story('Charles Boyle', 'assets/image/charles.jpg'),
    Story('Terry Crews', 'assets/image/terry.jpg'),
    Story('Norm Scully', 'assets/image/scully.jpg'),
    Story('Micheal Hitchcock', 'assets/image/hitchcock.jpg')
  ];
  List<Story> get items {
    return [..._items];
  }
}
