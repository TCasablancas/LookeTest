//
//  Topping.swift
//  LookeTest
//
//  Created by Thyago on 24/02/21.
//

import UIKit
import ObjectMapper

struct Topping: Mappable {
    var id: String?
    var type: String?
    
    init?(map: Map) {
        id = (try? map.value("id") ?? "")
        type = (try? map.value("type") ?? "")
    }
    
    mutating func mapping(map: Map) {
        id <- map["id"]
        type <- map["type"]
    }
}
