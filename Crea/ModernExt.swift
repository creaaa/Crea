
import UIKit

public protocol CreaCompatible {
    associatedtype   CompatibleType
           var crea: CompatibleType      { get }
    static var crea: CompatibleType.Type { get }
}

public final class Example<Base> {
    let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public extension CreaCompatible {

    public var crea: Example<Self> {
        return Example(self)
    }
    public static var crea: CompatibleType.Type {
        return CompatibleType.self
    }
    
}

extension UIViewController: CreaCompatible { }

extension Example where Base == UIViewController {
    
    public func showAlert(title: String, message: String? = nil, style: UIAlertControllerStyle = .alert) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        DispatchQueue.main.async {
            self.base.present(alert, animated: true, completion: nil)
        }
        
    }
    
}

///////

extension Date: CreaCompatible {}

extension Example where Base == Date {
    
    public static func dateFromString(string: String, format: String) -> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.date(from: string)!
    }
    
    public static func stringFromDate(date: Date, format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
    
}

