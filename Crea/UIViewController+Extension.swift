
import UIKit
import SystemConfiguration

public extension UIViewController {
    
    public func showAlert(title: String, message: String? = nil, style: UIAlertControllerStyle = .alert) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        DispatchQueue.main.async {
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    public static func isNetworkAvailable(host_name: String) -> Bool {
        
        let reachability = SCNetworkReachabilityCreateWithName(nil, host_name)!
        var flags        = SCNetworkReachabilityFlags.connectionAutomatic
        if !SCNetworkReachabilityGetFlags(reachability, &flags) {
            return false
        }
        
        let isReachable     = (flags.rawValue & UInt32(kSCNetworkFlagsReachable)) != 0
        let needsConnection = (flags.rawValue & UInt32(kSCNetworkFlagsConnectionRequired)) != 0
        return (isReachable && !needsConnection)
        
    }
    
    
    public func pushViewController(_ viewController: UIViewController, animated: Bool, completion: @escaping () -> Void)
    {
        self.navigationController?.pushViewController(viewController, animated: animated)
        
        guard animated, let coordinator = transitionCoordinator else {
            completion()
            return
        }
        
        coordinator.animate(alongsideTransition: nil) { _ in completion() }
    }
    
    
    public func popViewController(animated: Bool, completion: @escaping () -> Void) {
        
        self.navigationController?.popViewController(animated: true)
        
        guard animated, let coordinator = transitionCoordinator else {
            completion()
            return
        }
        
        coordinator.animate(alongsideTransition: nil) { _ in completion() }
        
    }
    
}



