subtractProductAndSum : (n int->v int) {
    num,sum,mul = 0,0,1 
    @ n > 0 {
        num = n \ 10
        mul = mul * num
        sum = sum + num
        n /= 10
    }
    <- mul - sum
}