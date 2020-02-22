defangIPaddr : (address str->v str) {
    newAddress! []byte
    @ i : address.. {
        ? i == '.' {
            newAddress += {'['; '.'; ']'}
        } _ {
            newAddress += i
        }
    }
    newAddress.to_str()
}