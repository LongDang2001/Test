import UIKit

func mutates(a: [Int]) -> [Int] {
    var b: [Int] = []
    var c = a
    var sum = 0
    for i in 0..<a.count {
        if i == 0 {
            c.insert(0, at: 0)
        } else if i == a.count-1 {
            c.append(0)
        }
    }
    for j in 1..<c.count-1 {
        sum = c[j-1] + c[j] + c[j+1]
        b.append(sum)
    }
    print(c)
    return b
}
let k = mutates(a: [4, 0, 1, -2, 3])
print(k)


