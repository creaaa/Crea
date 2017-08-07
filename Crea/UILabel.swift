
extension Primordium where Base: UILabel {
    
    // kerning
    public func kern(value: CGFloat) {
        self.base.attributedText = NSAttributedString(
            string: self.base.text ?? "",
            attributes: [NSKernAttributeName: value,
                         NSFontAttributeName: self.base.font,
                         NSForegroundColorAttributeName: self.base.textColor
            ]
        )
    }
    
}
