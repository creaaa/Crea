
extension Int: CreaCompatible {}

extension Primordium where Base == Int {
    
    /*
     // be careful! less than 0 of (to - from + 1) causes runtime crash!
     */
    public static func random(from: Int, to: Int) -> Int {
        if from > to { fatalError("invalid input: please input from <= to") }
        let rand = Int(arc4random_uniform(UInt32(to - from + 1)))
        return from + rand
    }
    
}
