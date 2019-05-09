Line1 :== {['q']False,['w']False,['e']False,['r']False,['t']False,['y']False,['u']False,['i']False,['o']False,['p']False}
Line2 :== {['a']False,['s']False,['d']False,['f']False,['g']False,['h']False,['j']False,['k']False,['l']False}

FindWords(words: []Str) -> (v: []Str) {
    result := []Str{}
    words @ ea {
        str := ea.ToLower()
        line = 0
        str @ c {
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
