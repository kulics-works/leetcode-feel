Line1 :== {['q']false,['w']false,['e']false,['r']false,['t']false,['y']false,['u']false,['i']false,['o']false,['p']false}
Line2 :== {['a']false,['s']false,['d']false,['f']false,['g']false,['h']false,['j']false,['k']false,['l']false}

FindWords(words: [Str]) -> (v: [Str]) {
    result := [Str]()
    @ ea <- words {
        str := ea.ToLower()
        line = 0
        @ c <- str {
            ? Line1.Has(c) {
                ? line == 0 | line == 1 {
                    line = 1
                } _ { 
                    <- @ 
                }
            } Line2.Has(c) {
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
