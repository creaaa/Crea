
/*
enum IntRandomError: Error {
    case invalidRange
}
*/

extension Int: CreaCompatible {}

extension Primordium where Base == Int {
    
    // MARK: Methods
    
    /**
     returns Int randomly
     - attention: If (to - from + 1) is less than 0, it causes runtime crash😱
     */
    public static func random(from: Int, to: Int) -> Int {
        if from > to {
            fatalError("invalid input: please input from <= to")
            // throw IntRandomError.invalidRange
        }
        let rand = Int(arc4random_uniform(UInt32(to - from + 1)))
        return from + rand
    }
    
}
