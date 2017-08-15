
import UIKit

extension Primordium where Base: UIView {

    /**
     add constraints to expand child view to parent view
    */
    public func addConstraints(for childView: UIView, insets: UIEdgeInsets = .zero) {
        
        childView.translatesAutoresizingMaskIntoConstraints = false
        
        self.base.topAnchor.constraint(equalTo: childView.topAnchor, constant: insets.top).isActive = true
        self.base.bottomAnchor.constraint(equalTo: childView.bottomAnchor, constant: insets.bottom).isActive = true
        self.base.leadingAnchor.constraint(equalTo: childView.leadingAnchor, constant: insets.left).isActive = true
        self.base.trailingAnchor.constraint(equalTo: childView.trailingAnchor, constant: insets.right).isActive = true
        
    }
    
}
