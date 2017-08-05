
import UIKit

public protocol CreaCompatible {
    associatedtype   CompatibleType
           var crea: CompatibleType      { get }
    static var crea: CompatibleType.Type { get }
}

public final class Primordium<Base> {
    let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

////////////////////////////

// Array拡張用
public struct PrimordiumWithAssociatedType<Base, AssociatedType> {
    let base: Base
}

/////////////////////////////


public extension CreaCompatible {

    public var crea: Primordium<Self> {
        return Primordium(self)
    }
    
    public static var crea: Primordium<Self>.Type {
        return Primordium<Self>.self
    }
    
}

extension NSObject: CreaCompatible { }



