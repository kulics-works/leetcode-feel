Solution {
    Library
}

sortArrayByParity (A:[]i32)->(v:i32) {
    arr1 := []i32{}
    arr2 := []i32{}
    @ [A] {
        ? ea & 1 ~= 1 {
            arr1 += ea
        } _ {
            arr2 += ea
        }
    }
    <- (arr1 + arr2)
}