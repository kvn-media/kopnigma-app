import 'package:koperasi/data/api/api_helper.dart';
import 'package:koperasi/data/models/loan_request.dart';
import 'package:koperasi/data/repository/loan_request_repo.dart';
import 'package:koperasi/utils/api_response_status.dart';
import 'package:koperasi/utils/string_compare.dart';

class LoanRequestRepoImpl extends LoanRequestRepo{

  ApiHelper apiHelper;

  LoanRequestRepoImpl(this.apiHelper);

  @override
  Future<ApiResponseStatus> submitLoanRequest(Loan loan) async{
    try {
      final savingResponse = await apiHelper.postData(
          '/loan', loan.toMap());

      if (savingResponse.status
          .equalsIgnoreCase(ApiResponseStatus.SUCCESS.toShortString())) {
        return ApiResponseStatus.SUCCESS;
      } else {
        return ApiResponseStatus.ERROR;
      }
    } catch (e) {
      print('error: $e');
      return ApiResponseStatus.ERROR;
    }
  }

}