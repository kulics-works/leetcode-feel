UniqueMorseRepresentations : (words []str -> v int) {
    Morse : {
        ['a']".-"; ['b']"-..."; ['c']"-.-."; ['d']"-.."; ['e']"."; ['f']"..-."; ['g']"--."
        ['h']"...."; ['i']".."; ['j']".---"; ['k']"-.-"; ['l']".-.."; ['m']"--"; ['n']"-."
        ['o']"---"; ['p']".--."; ['q']"--.-"; ['r']".-."; ['s']"..."; ['t']"-"
        ['u']"..-"; ['v']"...-"; ['w']".--"; ['x']"-..-"; ['y']"-.--"; ['z']"--.."
    }
    
    CountMap! : [str]bool{}
    @ ea : words.. {
        Temp! : ""
        @ c : ea.. {
            Temp += Morse[c]
        }
        CountMap[Temp] = true
    }

    <- CountMap.count
}
