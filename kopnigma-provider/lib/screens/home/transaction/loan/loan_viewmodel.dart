import 'package:koperasi/data/models/loan_request.dart';
import 'package:koperasi/screens/base_viewmodel.dart';
import 'package:koperasi/use_cases/submit_loan_request.dart';
import 'package:koperasi/utils/api_response_status.dart';
import 'package:koperasi/utils/screen_state.dart';

class LoanViewModel extends BaseViewModel {
  SubmitLoanRequest submitLoanRequest;

  LoanViewModel(this.submitLoanRequest);

  int? _statusSubmitted;

  int? get statusSubmitted => _statusSubmitted;

  Loan? _loan;

  Loan? get loan => _loan;

  submitUpdateProfile(Loan loan) async {
    print('Loan request');
    print(loan);
    try {
      setScreenState(ScreenState.loading());
      await submitLoanRequest.call(loan);
      _statusSubmitted = 1;
      setScreenState(ScreenState.idle());
    } catch (e) {
      setScreenState(ScreenState.idle());
      setScreenState(ScreenState.failed(e.toString()));
    }
  }
}