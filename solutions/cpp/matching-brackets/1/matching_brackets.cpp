#include "matching_brackets.h"

namespace matching_brackets {
    bool check(std::string str) {
        std::stack<char> check_stack;

        for (char c: str) {
            switch (c) {
                case '[': check_stack.push(c); break;
                case '{': check_stack.push(c); break;
                case '(': check_stack.push(c); break;
                case ']':
                    if (check_stack.empty() || check_stack.top() != '[')
                        return false;
                    check_stack.pop(); 
                    break;
                case '}': 
                    if (check_stack.empty() || check_stack.top() != '{')
                        return false;
                    check_stack.pop(); 
                    break;
                case ')': 
                    if (check_stack.empty() || check_stack.top() != '(')
                        return false;
                    check_stack.pop(); 
                    break;
            }
        }
        return check_stack.empty();
    }    
}  // namespace matching_brackets
