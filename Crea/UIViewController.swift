
import SystemConfiguration

// extension UIViewController: CreaCompatible { }

// extension Primordium where Base == UIViewController {
extension Primordium where Base: UIViewController {
    
    public func showAlert(title:   String,
                          message: String? = nil,
                          style:   UIAlertControllerStyle = .alert)
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        DispatchQueue.main.async {
            self.base.present(alert, animated: true, completion: nil)
        }
    }
    
    public static func isNetworkAvailable(host_name: String) -> Bool {
        
        // FIXME: throw error rather than return false
        guard host_name != "" else { return false }
        
        let reachability = SCNetworkReachabilityCreateWithName(nil, host_name)!
        var flags        = SCNetworkReachabilityFlags.connectionAutomatic
        if !SCNetworkReachabilityGetFlags(reachability, &flags) {
            return false
        }
        
        let isReachable     = (flags.rawValue & UInt32(kSCNetworkFlagsReachable)) != 0
        let needsConnection = (flags.rawValue & UInt32(kSCNetworkFlagsConnectionRequired)) != 0
        return (isReachable && !needsConnection)
        
    }
    
    
    public func pushViewController(_ viewController: UIViewController,
                                   animated: Bool,
                                   completion: (() -> Void)? = nil)
    {
        self.base.navigationController?.pushViewController(viewController, animated: animated)
        
        guard animated, let coordinator = self.base.transitionCoordinator else {
            if let completion = completion {
                completion()
            }
            return
        }
        
        coordinator.animate(alongsideTransition: nil) { _ in
            if let completion = completion {
                completion()
            }
        }
    }
    
    
    public func popViewController(animated: Bool,
                                  completion: (() -> Void)? = nil)
    {
        self.base.navigationController?.popViewController(animated: true)
        
        guard animated, let coordinator = self.base.transitionCoordinator else {
            if let completion = completion {
                completion()
            }
            return
        }
        
        coordinator.animate(alongsideTransition: nil) { _ in
            if let completion = completion {
                completion()
            }
        }
    }
    
}



