import Foundation
import UIKit

@objc public class FrameworkUtil: NSObject {
    
    @objc public static func copyStringForMono(_ string: String?) -> UnsafeMutablePointer<CChar>? {
        guard let string = string else { return nil }
        let cString = strdup(string)
        return cString
    }
    
    @objc public static func idfv() -> String? {
        return UIDevice.current.identifierForVendor?.uuidString
    }
}
