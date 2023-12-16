Challenge 1: Reverse a List

void printListReversed(List<dynamic> myList) {
  for (var i = myList.length - 1; i >= 0; i--) {
    print(myList[i]);
  }
}

void main() {
  List<dynamic> mySampleList = [1, 2, 3, 4, 5];
  print('Original List:');
  print(mySampleList);
  print('List in Reverse Order:');
  printListReversed(mySampleList);
}

--------------------------------------------------
Challenge 2: Balance the Parentheses

bool isBalancedParentheses(String str) {
  var stack = <String>[];
  var pairs = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  for (var char in str.runes) {
    var character = String.fromCharCode(char);
    if (character == '(' || character == '{' || character == '[') {
      stack.add(character);
    } else if (character == ')' || character == '}' || character == ']') {
      if (stack.isEmpty || stack.last != pairs[character]) {
        return false;
      }
      stack.removeLast();
    }
  }
  return stack.isEmpty;
}

void main() {
  String sampleString = '({[]})';
  print('String: $sampleString');
  if (isBalancedParentheses(sampleString)) {
    print('Parentheses are balanced');
  } else {
    print('Parentheses are not balanced');
  }
}


--------------------------------------------------------------------
Challenge 3: Print in Reverse

class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void addToFront(dynamic data) {
    var newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  void printReverse() {
    _printReverseHelper(head);
  }

  void _printReverseHelper(Node? node) {
    if (node == null) return;
    _printReverseHelper(node.next);
    print(node.data);
  }
}

void main() {
  var list = LinkedList();
  list.addToFront(3);
  list.addToFront(7);
  list.addToFront(10);
  list.addToFront(4);

  print('Linked List in Reverse:');
  list.printReverse();
}


----------------------------------------------------------
Challenge 4: Find the Middle Node

class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void addToFront(dynamic data) {
    var newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  Node? findMiddleNode() {
    if (head == null) return null;

    var slowPointer = head;
    var fastPointer = head;

    while (fastPointer != null && fastPointer.next != null) {
      slowPointer = slowPointer!.next;
      fastPointer = fastPointer.next!.next;
    }

    return slowPointer;
  }
}

void main() {
  var list = LinkedList();
  list.addToFront(3);
  list.addToFront(7);
  list.addToFront(10);
  list.addToFront(4);
  list.addToFront(8);

  var middleNode = list.findMiddleNode();
  if (middleNode != null) {
    print('Middle Node: ${middleNode.data}');
  } else {
    print('The list is empty or has no middle node.');
  }
}

----------------------------------------------------------
Challenge 5: Reverse a Linked List

class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void addToFront(dynamic data) {
    var newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  void reverse() {
    Node? prev = null;
    Node? current = head;
    Node? nextNode;

    while (current != null) {
      nextNode = current.next;
      current.next = prev;
      prev = current;
      current = nextNode;
    }

    head = prev;
  }

  void printList() {
    var temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  var list = LinkedList();
  list.addToFront(3);
  list.addToFront(7);
  list.addToFront(10);
  list.addToFront(4);

  print('Original List:');
  list.printList();

  list.reverse();

  print('\nReversed List:');
  list.printList();
}


---------------------------------------------------
Challenge 6: Remove All Occurrences
class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void addToFront(dynamic data) {
    var newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  void removeOccurrences(dynamic key) {
    Node? current = head;
    Node? prev = null;

    while (current != null) {
      if (current.data == key) {
        if (prev == null) {
          head = current.next;
        } else {
          prev.next = current.next;
        }
      } else {
        prev = current;
      }
      current = current.next;
    }
  }

  void printList() {
    var temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  var list = LinkedList();
  list.addToFront(3);
  list.addToFront(7);
  list.addToFront(3);
  list.addToFront(10);
  list.addToFront(4);
  list.addToFront(3);

  print('Original List:');
  list.printList();

  var keyToRemove = 3;
  list.removeOccurrences(keyToRemove);

  print('\nAfter Removing $keyToRemove:');
  list.printList();
}
