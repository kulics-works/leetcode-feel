isValid : (s str->v bool) {
    result : [>]int{}
    @ v : s {
        ? v : '(' {
            result.put(0)
        } ')' {
            ? ~result.is_empty() & result.peek() == 0 {
                result.pop()
            } _ {
                <- false
            }
        } '{' {
            result.put(1)
        } '}' {
            ? ~result.is_empty() & result.peek() == 1 {
                result.pop()
            } _ {
                <- false
            }
        } '[' {
            result.put(2)
        } ']' {
            ? ~result.is_empty() & result.peek() == 2 {
                result.pop()
            } _ {
                <- false
            }
        }
    }
    <- ~result.is_empty()
}