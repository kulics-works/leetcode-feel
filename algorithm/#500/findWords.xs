Solution. -> {
    line1 :== _{'q'->false,'w'->false,'e'->false,'r'->false,'t'->false,'y'->false,'u'->false,'i'->false,'o'->false,'p'->false}
    line2 :== _{'a'->false,'s'->false,'d'->false,'f'->false,'g'->false,'h'->false,'j'->false,'k'->false,'l'->false}

    findWords(words: [str]) -> (v: [str]) {
        result := [str]{}
        @ words {
            str := ea.toLower()
            Line = 0
            @ c <- str {
                ? line1.has(c) {
                    ? Line == 0 | Line == 1 {
                        Line = 1
                    } _ { 
                        <- @ 
                    }
                } line2.has(c) {
                    ? Line == 0 | Line == 2 {
                        Line = 2
                    } _ { 
                        <- @ 
                    }
                } _ {
                    ? Line == 0 | Line == 3 {
                        Line = 3
                    } _ { 
                        <- @ 
                    }
                }
            }
            result += ea
        }
        <- (result)
    }
}