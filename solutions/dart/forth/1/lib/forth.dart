class Forth {
    List<int> _stack = [];
    Set<String> arithmeticsList = {"+", "-", "/", "*"};    
    Set<String> keywordsList = {"dup", "drop", "swap", "over"};
    Map<String, List<String>> newWords = {};
    final emptyStack = Exception("Stack empty");
    final invalidDefinition = Exception("Invalid definition");
    void filter(List<String> result){
        if(result.first == ':'){
            definationCommand(result);
            return;            
        } 
        for(var char in result){
            char = char.toLowerCase();
            if(int.tryParse(char) != null){
                _stack.add(int.parse(char));
            }else if(newWords.containsKey(char)){               
                filter(newWords[char]!);
            }else if(arithmeticsList.any((e) => e == char)){
                arithmeticsCommand(char);
            }else if(keywordsList.any((e) => e == char)){                
                keywordsCommand(char);
            }else throw Exception("Unknown command");
        }
    }

    void arithmeticsCommand(String char){
        switch(char){
            case '+':
            if(_stack.length < 2) throw emptyStack;
            int a = _stack.removeLast();
            int b = _stack.removeLast();
            _stack.add(b + a);
            break;
            case '-':
            if(_stack.length < 2) throw emptyStack;
            int a = _stack.removeLast();
            int b = _stack.removeLast();
            _stack.add(b - a);
            break;
            case '*':
            if(_stack.length < 2) throw emptyStack;
            int a = _stack.removeLast();
            int b = _stack.removeLast();
            _stack.add(b * a);
            break;
            case '/':
            if(_stack.length < 2) throw emptyStack;
            int a = _stack.removeLast();
            int b = _stack.removeLast();
            if(a == 0) throw Exception("Division by zero");
            _stack.add(b ~/ a);
            break;
        }
    }

    void keywordsCommand(String char){
        switch(char){
            case "dup":
            dup();
            break;
            case "drop":
            drop();
            break;
            case "swap":
            swap();
            break;
            case "over":
            over();
            break;
        }
    }
    
    void definationCommand(List<String> result){
        result.remove(':'); result.remove(';');
        final String newWord = result.removeAt(0).toLowerCase();
        List<String> output = [];
        if(int.tryParse(newWord) != null) throw invalidDefinition;        
        for(var i = 0; i < result.length; i++){
            if(newWords.containsKey(result[i])){
                output.addAll(newWords[result[i]]!);
            }else output.add(result[i]);            
        }
        newWords[newWord] = output;
    }

    void evaluate(final String input){        
        List<String> result = input.split(' ');        
        filter(result);               
    }

     void over() {
      if(_stack.length < 2) throw emptyStack;            
      _stack.add(_stack[_stack.length-2]);
    }

    void swap() {
      if(_stack.length < 2) throw emptyStack;
      int a = _stack.removeLast();
      int b = _stack.removeLast();
      _stack.addAll([a, b]);
    }

    void drop() {
      if(_stack.length < 1) throw emptyStack;
      _stack.removeLast();
    }

    void dup() {
      if(_stack.length < 1) throw emptyStack;
      _stack.add(_stack.last);
    }

    List<int> get stack => _stack;
}