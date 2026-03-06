import scala.collection.mutable.Stack

object MatchingBrackets {
  def isPaired(brackets: String, idx: Int = 0, stack: Stack[Char] = Stack[Char]()): Boolean = idx match {
    case n if n == brackets.length => stack.isEmpty;
    case n if n < brackets.length => brackets(n) match {
      case c if c == '{' => {
        stack.push('}');
        isPaired(brackets, idx + 1, stack)
      }
      case c if c == '(' => {
        stack.push(')');
        isPaired(brackets, idx + 1, stack)
      }
      case c if c == '[' => {
        stack.push(']');
        isPaired(brackets, idx + 1, stack)
      }
      case c1 if Set('}', ')', ']').contains(c1) => {
        if (stack.isEmpty) false
        else {
          val c2 = stack.pop();
          if (c1 == c2) isPaired(brackets, idx + 1, stack)
          else false
        }
      }
      case _ => isPaired(brackets, idx + 1, stack)
    }
  }
}
