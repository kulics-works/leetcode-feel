Solution {
    Library
}

uniqueMorseRepresentations (words:[str])->(v:i32) {
    morse :=  _{'a' -> ".-",'b' -> "-...",'c' -> "-.-.",'d' -> "-..",'e' -> ".",'f' -> "..-.",'g' -> "--.",
                'h' -> "....",'i' -> "..",'j' -> ".---",'k' -> "-.-",'l' -> ".-..",'m' -> "--",'n' -> "-.",
                'o' -> "---",'p' -> ".--.",'q' -> "--.-",'r' -> ".-.",'s' -> "...",'t' -> "-",
                'u' -> "..-",'v' -> "...-",'w' -> ".--",'x' -> "-..-",'y' -> "-.--",'z' -> "--.."}
    
    countMap := [str]bl{}

    @ words {
        temp := ""
        @ c <- ea {
            temp += morse[c]
        }
        countMap[temp] = true
    }

    <- (countMap.count)
}