Unique Morse Representations(words: []Str) -> (v: Int) {
    Morse :=  {
        ['a']".-", ['b']"-...", ['c']"-.-.", ['d']"-..", ['e']".", ['f']"..-.", ['g']"--.",
        ['h']"....", ['i']"..", ['j']".---", ['k']"-.-", ['l']".-..", ['m']"--", ['n']"-.",
        ['o']"---", ['p']".--.", ['q']"--.-", ['r']".-.", ['s']"...", ['t']"-",
        ['u']"..-", ['v']"...-", ['w']".--", ['x']"-..-", ['y']"-.--", ['z']"--.."
    }
    
    CountMap := [Str]Bool{}
    words @ ea {
        Temp := ""
        ea @ c {
            Temp += Morse[c]
        }
        CountMap[Temp] = True
    }

    <- (CountMap.count)
}
