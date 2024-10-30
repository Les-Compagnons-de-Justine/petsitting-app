import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class PlaceDetailsMap extends StatelessWidget {
  final PlaceDetails placeDetails;
  final double height;
  final double width;
  final double zoom;

  const PlaceDetailsMap({
    super.key,
    required this.placeDetails,
    this.height = 300,
    this.width = double.infinity,
    this.zoom = 13,
  });

  @override
  Widget build(BuildContext context) {
    final location = LatLng(placeDetails.latitude!, placeDetails.longitude!);

    return SizedBox(
      height: height,
      width: width,
      child: FlutterMap(
        options: MapOptions(
          initialCenter: location,
          initialZoom: zoom,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // OSMF's Tile Server
          ),
          MarkerLayer(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: location,
                child: const Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 40.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
