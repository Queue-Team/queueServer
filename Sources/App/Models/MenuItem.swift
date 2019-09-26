//
//  MenuItem.swift
//  App
//
//  Created by Jaeson Booker on 9/25/19.
//

import Foundation

final class MenuItem: Encodable, Decodable {
    var title: String
    var description: String
    var itemURL: String?
    var price: Double
    init(title: String, description: String, itemURL: String?, price: Double) {
        self.title = title
        self.description = description
        self.itemURL = itemURL
        self.price = price
    }
}

/////  to be used as a dynamic migration.
//extension MenuItem: Migration { }
//
/////  to be encoded to and decoded from HTTP messages.
//extension MenuItem: Content { }
//
///// to be used as a dynamic parameter in route definitions.
//extension MenuItem: Parameter { }
