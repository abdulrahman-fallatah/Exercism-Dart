class Node{
  String data;
  Node? left;
  Node? right;
  Node(this.data);
}

class BinarySearchTree {    
  final Node root;  
  BinarySearchTree(value) : root = Node(value);    
  
  void insert(String input){
    var currentRoot = root;
    while(true){
      if(int.parse(input) > int.parse(currentRoot.data)){
        if(currentRoot.right == null){
          currentRoot.right = Node(input);
          break;
        }else {
          currentRoot = currentRoot.right!;          
        }    
      }else{
        if(currentRoot.left == null){
          currentRoot.left = Node(input);
          break;
        }else {
          currentRoot = currentRoot.left!;          
        } 
      }
    }    
  }

  void sort(Node? node, List<String> list){
    if(node == null) return;

    sort(node.left, list);
    list.add(node.data);
    sort(node.right, list);
  }

  get sortedData{
    List<String> result = [];
    sort(root, result);
    return result;
  }
}