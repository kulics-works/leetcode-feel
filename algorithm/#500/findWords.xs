Solution {
    Library
}

findWords (words:[]str)->(v:[]str) {
    result := []str{}
    @ [words] {
        str := ea.toLower()
        line = 0
        @ [str] c {
            ? line1.has(c) {
                ? line == 0 | line == 1 {
                    line = 1
                } _ { 
                    <- @ 
                }
            } line2.has(c) {
                ? line == 0 | line == 2 {
                    line = 2
                } _ { 
                    <- @ 
                }
            } _ {
                ? line == 0 | line == 3 {
                    line = 3
                } _ { 
                    <- @ 
                }
            }
        }
        result += ea
    }
    <- (result)
}

line1 :== _{'q'->false,'w'->false,'e'->false,'r'->false,'t'->false,'y'->false,'u'->false,'i'->false,'o'->false,'p'->false}
line2 :== _{'a'->false,'s'->false,'d'->false,'f'->false,'g'->false,'h'->false,'j'->false,'k'->false,'l'->false}