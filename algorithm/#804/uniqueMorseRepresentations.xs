Solution. -> {
    uniqueMorseRepresentations(words: [str]) -> (v: i32) {
        morse :=  {
            ['a']".-", ['b']"-...", ['c']"-.-.", ['d']"-..", ['e']".", ['f']"..-.", ['g']"--.",
            ['h']"....", ['i']"..", ['j']".---", ['k']"-.-", ['l']".-..", ['m']"--", ['n']"-.",
            ['o']"---", ['p']".--.", ['q']"--.-", ['r']".-.", ['s']"...", ['t']"-",
            ['u']"..-", ['v']"...-", ['w']".--", ['x']"-..-", ['y']"-.--", ['z']"--.."
        }
        
        countMap := [[str]bl]{}

        @ ea <- words {
            Temp := ""
            @ c <- ea {
                Temp += morse[c]
            }
            countMap[Temp] = true
        }

        <- (countMap.count)
    }
}