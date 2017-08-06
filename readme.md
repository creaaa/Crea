
# Crea (ver 0.0.10)

[![Platform](http://img.shields.io/badge/platform-ios-blue.svg?style=flat)](https://developer.apple.com/iphone/index.action)
[![Language](http://img.shields.io/badge/language-swift-brightgreen.svg?style=flat)](https://developer.apple.com/swift)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

🏃 Own library that supports my crazy iOS dev life 🏃

## Usage

### Carthage

```
github "creaaa/Crea"
```

That's it!
Hope you like it, stay tuned!


## Contents ##

- [UIKit](#uikit)
    - [UIViewController](#uiviewcontroller)
        - [Instance Methods](#instance-methods)
        - [Class Methods](#class-methods)
    - [UINavigationController](#uinavigationcontroller)
        - [Class Methods](#class-methods-1)
    - [UITabBar](#uitabbar)
        - [Class Methods](#class-methods-2)
    - [UIBarButtonItem](#uitabButtonitem)
        - [Class Methods](#class-methods-3)
    - [UIImage](#uiimage)
        - [Instance Methods](#instance-methods-1)
    - [UILabel](#uilabel)
        - [Instance Methods](#instance-methods-2)

- [Foundation](#foundation)
    - [Date](#date)
        - [Class Methods](#class-methods-6)
    - [Array](#array)
        - [Instance Methods](#instance-methods-6)


# UIKit #

## UIViewController ##

#### Instance Methods ####

Name | Signature
---- | ---------
**`showAlert`**|`showAlert (title: String, message: String? = nil, style: UIAlertControllerStyle = .alert)`
**`pushViewController`**|`pushViewController (viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) `
**`popViewController`**|`popViewController (animated: Bool, completion: (() -> Void)? = nil)`

#### Class Methods ####

Name | Signatures
---- | ----------
**`isNetworkAvailable`**|`isNetworkAvailable (host_name: String) -> Bool `

## UINavigationController ##

#### Class Methods ####

Name | Signatures
---- | ----------
**`navBarTitle`**|`navBarTitle (color: UIColor, fontName: String = "Helvetica", size: CGFloat = 12) `
**`navBarColor`**|`navBarColor (color: UIColor) `


## UITabBar ##

#### Class Methods ####

Name | Signatures
---- | ----------
**`tabBarColorSelected`**|`tabBarColorSelected (color: UIColor)`
**`tabBarColorUnselected`**|`tabBarColorUnselected (color: UIColor)`
**`tabBarItem`**|`tabBarItem (color: UIColor, fontName: String = "Helvetica", size: CGFloat = 12) `

## UIBarButtonItem ##

#### Class Methods ####

Name | Signatures
---- | ----------
**`barBtn`**|`barBtn  (color: UIColor, fontName: String = "Helvetica", size: CGFloat = 12) `

## UIImage ##

#### Instance Methods ####

Name | Signature
---- | ---------
**`resizeUIImage`**|`resizeUIImage (width: CGFloat, height: CGFloat) -> UIImage! `

## UILabel ##

#### Instance Methods ####

Name | Signature
---- | ---------
**`kern`**|`kern (kerningValue: CGFloat)`





<!--
#### Operators ####
Name | Signature | Function
---- | --------- | --------
`-`|`- <T: Equatable> (first: Array<T>, second: Array<T>) -> Array<T>`|Difference
`-`|`- <T: Equatable> (first: Array<T>, second: T) -> Array<T>`|Element removal
`&`|`& <T: Equatable> (first: Array<T>, second: Array<T>) -> Array<T>`|Intersection
<code>&#124;</code>|<code>&#124; <T: Equatable> (first: Array<T>, second: Array<T>) -> Array<T></code>|Union
`* Int`|`* <ItemType> (array: ItemType[], n: Int) -> [ItemType]`|Returns a new array built by concatenating int copies of self
`* String`|`* (array: String[], separator: String) -> String`|Equivalent to `array.implode(String)`
`[rangeAsArray: x..y]`<br>`[rangeAsArray: x...y]`|`subscript(#rangeAsArray: Range<Int>) -> Array`|Returns the sub-array from index *x* to index *y*
`[x, y, ...]`|`subscript(first: Int, second: Int, rest: Int...) -> Array`|Returns the items at *x*, *y*
-->
