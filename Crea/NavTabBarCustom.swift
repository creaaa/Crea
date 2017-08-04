
open class NavBar {
    
    /*
    call inside AppDelegate > application_didFinishLaunchingWithOptions
    */
    
    // nav bar title setting
    public static func navBarTitle(color: UIColor, fontName: String, size: CGFloat) {
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


open class TabBar {
    
    
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


open class BarBtnItem {
    
    // nav & tab bar's button setting
    public static func navbarBtn(color: UIColor, fontName: String, size: CGFloat) {
        UIBarButtonItem.appearance().setTitleTextAttributes(
            [ NSFontAttributeName: UIFont(name: fontName, size: size) as Any,
              NSForegroundColorAttributeName: color
            ],
            for: .normal)
    }
    
}



