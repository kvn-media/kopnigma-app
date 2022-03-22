import 'package:koperasi/data/models/loan_request.dart';
import 'package:koperasi/data/repository/loan_request_repo.dart';
import 'package:koperasi/utils/api_response_status.dart';


class SubmitLoanRequest {
  final LoanRequestRepo loanRequestRepo;

  SubmitLoanRequest(this.loanRequestRepo);

  Future<ApiResponseStatus> call(Loan loan) async {
    return loanRequestRepo.submitLoanRequest(loan);
  }
}