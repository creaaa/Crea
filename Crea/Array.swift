
extension Array: CreaCompatible {
    
    public var crea: PrimordiumWithAssociatedType<Array<Element>, Element> {
        return PrimordiumWithAssociatedType(base: self)
    }
    
    // ここ自信ねぇ。。。
    public static var crea: PrimordiumWithAssociatedType<Array<Element>, Element>.Type {
        return PrimordiumWithAssociatedType.self
    }
    
}

extension PrimordiumWithAssociatedType where Base == Array<AssociatedType> {
    
    public var random: AssociatedType? {
        guard !self.base.isEmpty else { return nil }
        let index = Int(arc4random_uniform(UInt32(self.base.count)))
        return self.base[index]
    }
    
    public static func hogeperofuga() {
        print("hogeperofuga!!")
    }
    
}

