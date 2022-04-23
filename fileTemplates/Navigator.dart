import 'package:flutter/material.dart';

#set($index = ${NAME.lastIndexOf('_')})
#if( $index < 0 )
  #set($index = ${NAME.length()})
#end
#set($val1 = "${NAME.substring(0, $index)}")
#set($CLASS_NAME = ${StringUtils.removeAndHump($val1, "_")})
class ${CLASS_NAME}Navigator {
  final BuildContext _context;

  ${CLASS_NAME}Navigator(this._context);

  
}
