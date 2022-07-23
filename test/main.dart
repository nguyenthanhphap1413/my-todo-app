import 'package:bloc_test/bloc_test.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/bloc/auth/authentication_cubit.dart';
import 'package:todo_app/bloc/connectivity/connectivity_cubit.dart';
import 'package:todo_app/shared/validators.dart';

class MockAuthenticationCubit extends MockCubit<AuthenticationState>
    implements AuthenticationCubit {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  cubitTest();
}

cubitTest() {
  group('Authentication Cubit Listenner', () {
    test("Let's the mock AuthenticationCubit as Stream", () {
      final authenticationCubit = MockAuthenticationCubit();
      whenListen(
          authenticationCubit,
          Stream<AuthenticationState>.fromIterable([
            AuthenticationInitial(),
            AuthenticationLoadingState(),
            AuthenticationSuccessState(),
            UnAuthenticationState(),
            UpdateProfileLoadingState()
          ]));
      expectLater(
          authenticationCubit.stream,
          emitsInOrder(<AuthenticationState>[
            AuthenticationInitial(),
            AuthenticationLoadingState(),
            AuthenticationSuccessState(),
            UnAuthenticationState(),
            UpdateProfileLoadingState()
          ]));
    });
  });
  group("Validators email", () {
    test("Validators incorrect format ", () {
      expect(Validators.isValidEmail('test'), false);
    });
    test("Validators incorrect format ", () {
      expect(Validators.isValidEmail('test@'), false);
    });
    test("Validators correct format ", () {
      expect(Validators.isValidEmail('test@gmail.com'), true);
    });

    test("Validators incorrect format ", () {
      expect(Validators.isValidEmail('test@gmail.com.1!23'), false);
    });
  });

  group("ConnectivityCubit check connection", () {
    late ConnectivityCubit _connectivityCubit;
    setUp(() {
      _connectivityCubit = ConnectivityCubit();
    });

    test('has a correct initialState', () {
      expect(_connectivityCubit.state, ConnectivityInitial());
    });

    test('has a _connectivity init', () {
      _connectivityCubit.checkConnection(ConnectivityResult.none);
      expect(
        _connectivityCubit.hasConnection,
        false,
      );
    });
    test('has a _connectivity init', () async {
      await _connectivityCubit.checkConnection(ConnectivityResult.mobile);
      expect(
        _connectivityCubit.hasConnection,
        true,
      );
    });

    test('has a _connectivity init', () async {
      await _connectivityCubit.checkConnection(ConnectivityResult.wifi);
      expect(
        _connectivityCubit.hasConnection,
        true,
      );
    });
  });
}

//test tagss git 