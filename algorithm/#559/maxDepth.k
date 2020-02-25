MaxDepth : (root ?Node -> v int) {
    ? root == nil {
        <- 0
    }

    Depth! : 0
    @ ea : root.children.. {
        Temp! : MaxDepth(ea)
        ? Temp > Depth {
            Depth = Temp
        }
    }
    <- Depth+1
}
