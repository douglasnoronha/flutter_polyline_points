import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_polyline_points/flutter_polyline_points.dart';

void main() {
  test('get list of coordinates from two geographical positions', () async {
    final polylinePoints = PolylinePoints();
    List<PointLatLng> points = await polylinePoints.getRouteBetweenCoordinates(
        "Api Key",
        6.5212402,
        3.3679965,
        6.595680,
        3.337030);
    assert(points.isNotEmpty == true);
  });

  test('get list of coordinates from an encoded String', () {
    print("Writing a test is very easy");
    final polylinePoints = PolylinePoints();
    List<PointLatLng> points =
        polylinePoints.decodePolyline("_p~iF~ps|U_ulLnnqC_mqNvxq`@");
    print("Answer ---- ");
    print(points);
    assert(points != null);
    assert(points.length > 0);
  });
}
