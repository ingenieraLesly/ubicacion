import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/domain/use_case/controllers/location.dart';
import 'package:misiontic_template/domain/use_case/controllers/permissions.dart';
import 'package:misiontic_template/domain/use_case/location_management.dart';
import 'package:url_launcher/url_launcher.dart';

class GpsScreen extends StatefulWidget {
  const GpsScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

enum RadioState { on, off }

class _State extends State<GpsScreen> {
  late PermissionsController permissionsController;
  late LocationController locationController;
  late LocationManager manager;

  @override
  void initState() {
    super.initState();
    permissionsController = Get.find();
    locationController = Get.find();
    manager = LocationManager();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ElevatedButton(
                onPressed: () async {
                  // TODO Verifica que tienes los permisos y luego obten la ubicacion
                  // Almacenala y tambien muestra un snackbar con los datos
                },
                child: const Text('Obtener Ubicacion'),
              ),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Obx(
                () => ElevatedButton(
                  onPressed: locationController.location.value != null
                      ? () async {
                          // TODO con los datos de ubicacion almacenados construye un enlace a Google Maps
                          // y lanzalo
                        }
                      : null,
                  child: const Text('Abrir Maps'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
