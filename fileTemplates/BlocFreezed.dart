#set($index = ${NAME.lastIndexOf('_')})
#if( $index < 0 )
  #set($index = ${NAME.length()})
#end
#set($val1 = "${NAME.substring(0, $index)}")
#set($CLASS_NAME = ${StringUtils.removeAndHump($val1, "_")})
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kids_mobile_app/presentation/common/di/disposable_bloc.dart';
import '../navigator/${val1}_navigator.dart';

part '${NAME}.freezed.dart';

class ${CLASS_NAME}Bloc extends Bloc<${CLASS_NAME}Event, ${CLASS_NAME}State> with DisposableBloc {
  final ${CLASS_NAME}Navigator _navigator;

  ${CLASS_NAME}Bloc(this._navigator) : super(const ${CLASS_NAME}State.loading());

  @override
  Stream<${CLASS_NAME}State> mapEventToState(${CLASS_NAME}Event event) {
    return event.maybeWhen(
      orElse: () async* {
        
      },
    );
  }
}
#set($prefix = "_$")
@freezed
class ${CLASS_NAME}Event with ${prefix}${CLASS_NAME}Event {
  const factory ${CLASS_NAME}Event.opened() = ${CLASS_NAME}OpenedEvent;
}

@freezed
class ${CLASS_NAME}State with ${prefix}${CLASS_NAME}State {
  const factory ${CLASS_NAME}State.loading() = ${CLASS_NAME}LoadingState;
  const factory ${CLASS_NAME}State.loadingError() = ${CLASS_NAME}LoadingErrorState;
}