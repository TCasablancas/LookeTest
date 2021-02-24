//
//  Request.swift
//  LookeTest
//
//  Created by Thyago on 24/02/21.
//

import Foundation
import Alamofire

class Request {
    let alamofireManager: SessionManager = {
        let configure = URLSessionConfiguration.default
        
        configure.timeoutIntervalForRequest = 1000
        configure.timeoutIntervalForResource = 1000
        
        return SessionManager(configuration: configure)
    }()
}
