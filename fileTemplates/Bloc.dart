#set($index = ${NAME.lastIndexOf('_')})
#if( $index < 0 )
  #set($index = ${NAME.length()})
#end
#set($val1 = "${NAME.substring(0, $index)}")
#set($CLASS_NAME = ${StringUtils.removeAndHump($val1, "_")})
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_mobile_app/presentation/common/di/disposable_bloc.dart';
import '../navigator/${val1}_navigator.dart';

class ${CLASS_NAME}Bloc extends Bloc<${CLASS_NAME}Event, ${CLASS_NAME}State> with DisposableBloc {
  final ${CLASS_NAME}Navigator _navigator;
 
  ${CLASS_NAME}Bloc(this._navigator) : super(${CLASS_NAME}LoadingState());

  @override
  Stream<${CLASS_NAME}State> mapEventToState(${CLASS_NAME}Event event) async* {
    if (event is ${CLASS_NAME}PageOpenedEvent) {
      //todo impl
    }
  }
}

// events

abstract class ${CLASS_NAME}Event {}

class ${CLASS_NAME}PageOpenedEvent extends ${CLASS_NAME}Event {}

// states

abstract class ${CLASS_NAME}State {}

class ${CLASS_NAME}LoadingState extends ${CLASS_NAME}State {}

class ${CLASS_NAME}LoadedState extends ${CLASS_NAME}State {}
