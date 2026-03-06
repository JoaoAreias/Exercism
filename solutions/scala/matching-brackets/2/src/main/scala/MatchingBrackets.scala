import scala.collection.mutable.Stack

object MatchingBrackets {
  private val bracket_map = Map(
    '[' -> ']',
    '(' -> ')',
    '{' -> '}'
  )
  
  def isPaired(brackets: String, stack: Stack[Char] = Stack[Char]()): Boolean = {
    if (brackets.isEmpty) stack.isEmpty
    else brackets.head match {
      case '{' | '[' | '(' => {
        stack.push(bracket_map(brackets.head));
        isPaired(brackets.tail, stack)
      }
      case '}' | ']' | ')' => {
        if (stack.isEmpty || brackets.head != stack.top) 
            false
        else {
          stack.pop();
          isPaired(brackets.tail, stack)
        }
      }
      case _ => isPaired(brackets.tail, stack)
    }
  }
}
