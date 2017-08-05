
////////////////////////////
// UINavigationController //
////////////////////////////

// extension Primordium where Base == UINavigationController {
extension Primordium where Base: UINavigationController {
    
    /*
     call inside AppDelegate > application_didFinishLaunchingWithOptions
     */
    
    // nav bar title setting
    public static func navBarTitle(color: UIColor, fontName: String = "Helvetica", size: CGFloat = 12) {
        UINavigationBar.appearance().titleTextAttributes =
            [NSForegroundColorAttributeName: color,
             NSFontAttributeName: UIFont(name: fontName, size: size) as Any
        ]
    }
    
    // nav bar background color
    public static func navBarColor(color: UIColor) {
        UINavigationBar.appearance().barTintColor = color
    }
    
}


//////////////
// UITabBar //
//////////////

// extension UITabBar: CreaCompatible { }

// extension Primordium where Base == UITabBar {
extension Primordium where Base: UITabBar {
    
    /*
     call inside AppDelegate > application_didFinishLaunchingWithOptions
     */
    
    // you can't tab bar's color here; write each VC
    // self.tabBarController?.tabBar.barTintColor = .black
    
    // tab bar's icon (when selected)
    public static func tabBarColorSelected(color: UIColor) {
        UITabBar.appearance().tintColor = color
    }
    
    // tab bar's icon (when unselected)
    public static func tabBarColorUnselected(color: UIColor) {
        UITabBar.appearance().unselectedItemTintColor = color
    }

}


// extension Primordium where Base == UIBarButtonItem {
extension Primordium where Base: UIBarButtonItem {
    
    // nav & tab bar's button setting
    public static func barBtn(color: UIColor, fontName: String = "Helvetica", size: CGFloat = 12) {
        UIBarButtonItem.appearance().setTitleTextAttributes(
            [ NSFontAttributeName: UIFont(name: fontName, size: size) as Any,
              NSForegroundColorAttributeName: color
            ],
            for: .normal)
    }
    
}



