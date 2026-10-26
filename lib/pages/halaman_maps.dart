import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// BAGAS RAMIRO SAPUTRA
// 152024081
class halaman_maps extends StatefulWidget {
  const halaman_maps({super.key});

  @override
  State<halaman_maps> createState() => _HalamanMapsState();
}

class _HalamanMapsState extends State<halaman_maps> {
  static const LatLng lokasiKampus = LatLng(-6.9720791, 107.6053966);
  final Set<Marker> marker = {const Marker(
    position: LatLng(-6.9720791, 107.6053966),
    markerId: MarkerId('lokasi_kampus'),
    infoWindow: InfoWindow(
      title: 'Telkom University',
      snippet: 'Jl. Telekomunikasi Bandung',
    )
  )};
  @override
  Widget build(BuildContext context){
    return GoogleMap(
      initialCameraPosition: const CameraPosition(
        target:LatLng(-6.9720791, 107.6053966),
        zoom: 15,
      ),
      markers: marker,
      );
  }
}
