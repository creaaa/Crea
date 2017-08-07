
extension Int: CreaCompatible {}

extension Primordium where Base == Int {
    
    public static func random(from: Int, to: Int) -> Int {
        
        let rand = Int(arc4random_uniform(UInt32(to - from + 1)))
        
        return from + rand
        
    }
    
}
