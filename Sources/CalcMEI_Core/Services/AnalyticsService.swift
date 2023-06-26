//
//  AnalyticsService.swift
//  
//
//  Created by Frédéric Helfer on 23/06/23.
//

import Foundation
import FirebaseAnalytics

public protocol AnalyticsServiceProtocol {
    func logEvent(name: String, params: [String:Any]?)
}

class AnalyticsService: AnalyticsServiceProtocol {

    func logEvent(name: String, params: [String:Any]? = nil) {
        Analytics.logEvent(name, parameters: params)
    }
    
}
