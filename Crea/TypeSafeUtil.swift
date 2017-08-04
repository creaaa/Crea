
import UIKit

/* Nib */

public protocol InstantiatableFromNib {
    static var  nibName: String { get }
    static func instantiateFromNib() -> Self
}

public extension InstantiatableFromNib where Self: UIView {
    
    public static var nibName: String {
        return String(describing: Self.self)
    }
    
    public static func instantiateFromNib() -> Self {
        let nib = UINib(nibName: nibName, bundle: nil)
        return nib.instantiate(withOwner: nil, options: nil).first as! Self
    }
    
}

/* StoryBoard */

public extension NSObjectProtocol {
    
    // static内のselfは、クラス自身 = つまりメタタイプそのものを表す
    // その証拠に、インスタンスを表すselfと違い、返り値の型が違ってる！
    
    // 1. ふつう
    // let hoge: Person = self
    // 2. ↓
    // let hoge: Person.Type = self
    
    public static var className: String { return String(describing: self) }
    
}

public protocol Storyboardable: NSObjectProtocol {
    static var  storyboardName: String { get }
    static func instantiate() -> Self
}

public extension Storyboardable where Self: UIViewController {
    
    public static var storyboardName: String { return className }
    
    public static func instantiate() -> Self {
        return UIStoryboard(name: storyboardName, bundle: Bundle(for: self))
            .instantiateInitialViewController() as! Self
    }
    
}

/* Cell */

public protocol Nibable: NSObjectProtocol {
    static var nibName: String { get }
    static var nib:     UINib  { get }
}

public extension Nibable {
    
    public static var nibName: String { return className }
    
    public static var nib: UINib {
        return UINib(nibName: nibName, bundle: Bundle(for: self))
    }
    
}


public extension UITableViewCell {
    static var identifier: String { return className }
}

public extension UITableView {
    
    public func register<T: UITableViewCell>(_ cellType: T.Type) {
        register(T.self, forCellReuseIdentifier: T.identifier)
    }
    
    public func register<T: UITableViewCell>(nibCell: T.Type) where T: Nibable {
        register(T.nib, forCellReuseIdentifier: T.identifier)
    }
    
    public func dequeueReusableCell<T: UITableViewCell>
        (with cellType: T.Type, for indexPath: IndexPath) -> T {
        
        return dequeueReusableCell(withIdentifier: T.identifier, for: indexPath) as! T
    }
    
}

