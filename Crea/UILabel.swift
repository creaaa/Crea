
extension Primordium where Base: UILabel {
    
    // kerning
    public func kern(kerningValue: CGFloat) {
        self.base.attributedText = NSAttributedString(
            string: self.base.text ?? "",
            attributes: [NSKernAttributeName: kerningValue,
                         NSFontAttributeName: self.base.font,
                         NSForegroundColorAttributeName: self.base.textColor
            ]
        )
    }
    
}
