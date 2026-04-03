class Strain {
  List keep<T>(List<T> values, bool Function(T) fn){    
    return values.where((e) => fn(e)).toList();       
  }
  
  List discard<T>(List<T> values, bool Function(T) fn){    
    return values.where((e) => !fn(e)).toList();       
  }
}