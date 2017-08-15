
extension Date: CreaCompatible {}

// ここに書いてることで、↓のinitで使える。ここに書いてることに意味がある
private let formatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.timeZone = NSTimeZone.system
    formatter.locale   = Locale(identifier: "en_US_POSIX")
    formatter.calendar = Calendar(identifier: .gregorian)
    return formatter
}()


extension Primordium where Base == Date {
    
    
    // initすると、型が　Primordium<Date>? となってしまい、これはDate型にキャストできない...
    // targeted extension内で init を定義するのは絶望的に相性悪いと判断し、退避
    /*
    // String → Date
    public convenience init?(dateString: String,
                             dateFormat: String = "yyyy-MM-dd") {
        
        formatter.dateFormat = dateFormat
        guard let date = formatter.date(from: dateString) else { return nil }
        
        //self.base = date
        self.init(date)
        
    }
    */
    
    // MARK: Methods
    
    // initのかわりに、method にしました
    /**
     yields Date from String
     */
    public static func date(from string: String, format: String = "yyyy-MM-dd") -> Date? {
        formatter.dateFormat = format
        return formatter.date(from: string) ?? nil
    }
    
    
    /*
    public static func stringFromDate(date: Date, format: String = "yyyy-MM-dd") -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
    */
    

    /**
     yields String from Date
     */
    public static func string(date: Date, format: String = "yyyy-MM-dd") -> String {
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
    
    
}
