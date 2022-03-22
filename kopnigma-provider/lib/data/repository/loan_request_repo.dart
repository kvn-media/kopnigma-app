import 'package:koperasi/data/models/loan_request.dart';
import 'package:koperasi/utils/api_response_status.dart';

abstract class LoanRequestRepo {
  Future<ApiResponseStatus> submitLoanRequest(Loan loan);

}
