import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_mobile_app/presentation/common/progress.dart';
import 'package:kids_mobile_app/presentation/util/screen_utils.dart';

#set($index = ${NAME.lastIndexOf('_')})
#if( $index < 0 )
  #set($index = ${NAME.length()})
#end
#set($val1 = "${NAME.substring(0, $index)}")
#set($CLASS_NAME = ${StringUtils.removeAndHump($val1, "_")})

class ${CLASS_NAME}Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChildInjectorStatefulWidget(
      childModuleBuilder: () => ${CLASS_NAME}Module(context),
      injectorBuilder: (i) => _${CLASS_NAME}Widget(i.get()),
    );
  }
}

class _${CLASS_NAME}Widget extends StatelessWidget {
  
  final ${CLASS_NAME}Bloc _bloc;

  _${CLASS_NAME}Widget(this._bloc);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BlocBuilder<${CLASS_NAME}Bloc, ${CLASS_NAME}State>(
      bloc: _bloc,
      builder: (context, state) {
        if (state is ${CLASS_NAME}LoadedState) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  
                ],
              ),
            ),
          );
        } else {
          return progressWidget();
        }
      },
    ),);
  }
}
