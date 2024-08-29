//
//  Auth.swift
//  MinimumFramework
//
//  Created by jxiong on 2024/08/29.
//

import Foundation
import Security

@objc public class FrameworkAuthBridge: NSObject {
    
    @objc public static let shared = FrameworkAuthBridge()
    
    @objc public func idfv() -> String? {
        return FrameworkUtil.idfv()
    }
}
