myAtoi : (str str -> v int) {
    automaton : NewAutomaton()
    @ ch : str.. {
        automaton.Get(ch)
    }
    <- automaton.Sign * (automaton.Ans int!)
}

START : "start"
SIGNED : "signed"
IN_NUM : "in_number"
END : "end"

GetCol : (c chr -> v int) {
    ? c == ' ' {
        <- 0
    }
    ? c == '+' | c == '-' {
        <- 1
    } 
    ? c >= '0' & c <= '9' {
        <- 2
    }
    <- 3
}

Automaton : (->$) {
    State = START
    Sign = 1

    Map = [str][]str{
        [START] = []str{START; SIGNED; IN_NUM; END}
        [SIGNED] = []str{END; END; IN_NUM; END}
        [IN_NUM] = []str{END; END; IN_NUM; END}
        [END] = []str{END; END; END; END}
    }
} & $ {
    State str
    Map [str][]str
    Sign int
    Ans i64
    
    Get : (c chr ->) {
        State = Map[State][GetCol(c)]
        ? State == IN_NUM {
            Ans = Ans * 10 + c - '0'
            ? Sign == 1 {
                Ans = min(Ans, 2147483647)
            } _ {
                Ans = min(Ans, 2147483648)
            }
        } State == SIGNED {
            ? c == '+' {
                Sign = 1
            } _ {
                Sign = -1
            }
        } 
    }
}
