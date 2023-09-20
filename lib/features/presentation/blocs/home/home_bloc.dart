import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/features/data/exception/failure.dart';
import 'package:music_app/features/domain/usecases/get_product.dart';
import 'package:music_app/features/domain/usecases/use_case.dart';
import 'package:music_app/features/presentation/blocs/base/base_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc(this._getRandomImageUseCase) : super(const HomeState());

  final GetRandomImage _getRandomImageUseCase;

  @override
  void init() {
    on<GetRandomImageEvent>(_getRandomImage);
  }

  _getRandomImage(GetRandomImageEvent event, Emitter<HomeState> emitter) async {
    emitter(state.copyWith(isLoading: true));
    (await _getRandomImageUseCase(None())).fold((data) {
      emitter(state.copyWith(imageUrl: data?.urls?.raw));
    }, (error) {
      emitter(state.copyWith(error: error));
    });
  }
}
