import 'package:http/http.dart';
import 'package:prueba_tecnica_agenda/interfaces/ImageResponse.dart';

// Servicio para obtener datos del usuario desde una API externa
class UserService {
  String basePath = 'https://randomuser.me/api/';

  // Función para obtener la URL de una imagen de perfil aleatoria
  Future<String> getProfileImage() async {
    String imgUrl = '';

    // Creamos la URI y hacemos la petición GET
    Uri uri = Uri.parse(basePath);
    Response response = await get(uri);

    // Convertimos la respuesta en un objeto ImageResponse
    ImageResponse image = imageResponseFromJson(response.body);

    // Obtenemos la URL de tamaño medio de la imagen
    imgUrl = image.results.first.picture.medium;

    return imgUrl;
  }
}
