class Strain {
  List keep<T>(List<T> values, bool Function(T) fn){
    List result = [];
    result = values.where((e) => fn(e)).toList();   
    return result;
  }
  
  List discard<T>(List<T> values, bool Function(T) fn){
    List result = [];
    result = values.where((e) => !fn(e)).toList();   
    return result;
  }
}