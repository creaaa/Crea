
extension Array: CreaCompatible {
    public var crea: PrimordiumWithAssociatedType<Array<Element>, Element> {
        return PrimordiumWithAssociatedType(base: self)
    }
}

extension PrimordiumWithAssociatedType where Base == Array<AssociatedType> {
    
    public var random: AssociatedType? {
        guard !self.base.isEmpty else { return nil }
        let index = Int(arc4random_uniform(UInt32(self.base.count)))
        return self.base[index]
    }
    
}

