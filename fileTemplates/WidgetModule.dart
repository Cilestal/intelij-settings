#set($index = ${NAME.lastIndexOf('_')})
#if( $index < 0 )
  #set($index = ${NAME.length()})
#end
#set($val1 = "${NAME.substring(0, $index)}")
#set($CLASS_NAME = ${StringUtils.removeAndHump($val1, "_")})
import 'package:flutter/cupertino.dart';
import 'package:flutter_multi_module_di/flutter_multi_module_di.dart';
import '../bloc/${val1}_bloc.dart';
import '../navigator/${val1}_navigator.dart';

class ${CLASS_NAME}Module extends WidgetModule {
  ${CLASS_NAME}Module(BuildContext context) : super(context);

  @override
  void configureWidget(Binder binder) {
    binder..bindLazySingleton((i, _) => ${CLASS_NAME}Bloc(i.get())..add(${CLASS_NAME}PageOpenedEvent()));
    
    binder..bindLazySingleton((i, _) => ${CLASS_NAME}Navigator(i.get()));
  }
}