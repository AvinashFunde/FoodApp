import 'package:fast_food/apiService/login_request.dart';
import 'package:fast_food/apiService/login_responce.dart';
import 'package:fast_food/apiService/request.dart';

class CommonRepository {
  ApiClient apiClient = ApiClient();

  ///------------------
  // Future<VerifyMobileResponse?> hitProductAPI() async {
  //   VerifyMobileResponse? responseModel;

  //   final results = await apiClient.requestGet(
  //     url: ApiConstant.productListAPI,
  //   );

  //   if (results != null) {
  //     responseModel = VerifyMobileResponse.fromJson(results);
  //   }
  //   return responseModel;
  // }

  //  ///----------------
  // Future<LoginResponce?> hitLoginAPI(
  //     LoginRequest requestModel) async {
  //   LoginResponce? responseModel;
  //
  //   final results = await apiClient.requestPost(
  //       url: ApiConstant.customerSignupURL,
  //       parameters: json.encode(requestModel));
  //
  //   if (results != null) {
  //     responseModel = CustomerSignupResponse.fromJson(results);
  //   }
  //   return responseModel;
  // }

  // Future<VerifyMobileResponse?> hitVerifyMobileApi(
  //     VerifyMobileRequest requestModel) async {
  //   VerifyMobileResponse? responseModel;
  //
  //   final results = await apiClient.requestVerifyMobile(
  //       url: ApiConstant.verifyMobileURL, requestModel: requestModel);
  //
  //   if (results != null) {
  //     responseModel =
  //         VerifyMobileResponse.fromJson(jsonDecode(jsonEncode(results)));
  //     log("result get API");
  //     log("responseModel ${results}");
  //     log("responseModel ${responseModel.otp}");
  //   }
  //   return responseModel;
  // }
}