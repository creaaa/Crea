
extension Date: CreaCompatible {}

private let formatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.timeZone = NSTimeZone.system
    formatter.locale   = Locale(identifier: "en_US_POSIX")
    formatter.calendar = Calendar(identifier: .gregorian)
    return formatter
}()

extension Primordium where Base == Date {
    
    /*
    public static func dateFromString(string: String, format: String = "yyyy-MM-dd") -> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.date(from: string)!
    }
    */
    
    // String → Date
    public convenience init?(dateString: String, dateFormat: String = "yyyy-MM-dd'T'HH:mm:ssZ") {
        
        formatter.dateFormat = dateFormat
        guard let date = formatter.date(from: dateString) else { return nil }
        
        //self.base = date
        self.init(date)
        
    }
    
    
    /*
    public static func stringFromDate(date: Date, format: String = "yyyy-MM-dd") -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
    */
    
    // Date → String
    public func string(format: String = "yyyy-MM-dd'T'HH:mm:ssZ") -> String {
        formatter.dateFormat = format
        return formatter.string(from: self.base)
    }
    
    
}
