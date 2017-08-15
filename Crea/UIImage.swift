
extension Primordium where Base: UIImage {

    // MARK: Methods
    
    /**
     resizes UIimage
     */
    public func resizeUIImage(width: CGFloat, height: CGFloat) -> UIImage! {
        
        // 指定された画像の大きさのコンテキストを用意
        UIGraphicsBeginImageContext(CGSize(width: width, height: height))
        // コンテキストに自身に設定された画像を描画する
        self.base.draw(in: CGRect(x: 0, y: 0, width: width, height: height))
        // コンテキストからUIImageを作る
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        // コンテキストを閉じる
        UIGraphicsEndImageContext()
        
        return newImage
        
    }
    
}
