// import 'package:dio/dio.dart';

// import 'package:lck_dio_interceptors/lck_dio_interceptors.dart';

// import 'constants.dart';
// import 'gerenciamento_de_parametros_sqlite.dart';

// class MyDioSimpleFactory {
//   static Dio getDio(
//       {int? connectionTimeoutInSeconds = 5,
//       int? receiveTimeoutInSeconds = 90}) {
//     var clientCredentialTokenInterceptor = LckClientCredentialsTokenInterceptor(
//         baseApiURL:
//             '${GerenciamentoParametrosSqLite.getParametros().enderecoBackEnd}',
//         clientCredentialKey: Constants.clientCredentialKey);

//     var httpCacheInterceptor = LckDioHttpCacheInterceptor();

//     return DioSimpleFactory.createDio(
//         connectionTimeoutInSeconds: connectionTimeoutInSeconds,
//         receiveTimeoutInSeconds: receiveTimeoutInSeconds,
//         baseUrl:
//             '${GerenciamentoParametrosSqLite.getParametros().enderecoBackEnd}',
//         clientCredentialKey: Constants.clientCredentialKey,
//         interceptors: [clientCredentialTokenInterceptor, httpCacheInterceptor]);
//   }
// }
