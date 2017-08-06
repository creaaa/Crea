
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
- [UIBarButtonItem](#uitarButtonitem)
- [Class Methods](#class-methods-3)
- [UIImage](#uiimage)
- [Instance Methods](#instance-methods-4)
- [UILabel](#uilabel)
- [Instance Methods](#instance-methods-5)

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
**`showAlert`**|`showAlert (title: String, message: String? = default, style: UIAlertControllerStyle = default)`

#### Class Methods ####

Name | Signatures
---- | ----------
**`range`**|`range <U: ForwardIndex> (range: Range<U>) -> Array<U>`

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
