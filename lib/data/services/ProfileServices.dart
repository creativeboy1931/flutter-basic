import 'package:basic/data/model/profile_model.dart';
import 'package:basic/data/network/ApiEndpoints.dart';
import 'package:basic/data/network/DioClient.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class ProfileServices {
  final DioClient _client = Get.find<DioClient>();

  Future<List<ProfileModel>> fetchProducts() async {
    try {
      final response = await _client.get(
        ApiEndpoints.fetchProfile20,
      );
      final data = response.data['results'];

      if (data is List) {
        return data.map((json) => ProfileModel.fromJson(json)).toList();
      } else {
        throw Exception('Unexpected response format');
      }
    } on DioException catch (e) {
      throw Exception('Network error: ${e.message}');
    } catch (e) {
      throw Exception('Unknown error: $e');
    }
  }
}