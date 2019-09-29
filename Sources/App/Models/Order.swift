//
//  Order.swift
//  App
//
//  Created by Jaeson Booker on 9/28/19.
//

import Foundation
import FluentSQLite
import Vapor

final class Order: Decodable, Encodable {
    /// The unique identifier for this
    var id: Int?
    var restaurant: Restaurant
    var menuItems: [MenuItem]
    var total: Double
    var paid: Bool
    var ready: Bool
    var delivered: Bool
    init(id: Int? = nil, restaurant: Restaurant, menuItems: [MenuItem], total: Double, paid: Bool, ready: Bool = false, delivered: Bool = false) {
        self.id = id
        self.restaurant = restaurant
        self.menuItems = menuItems
        self.total = total
        self.paid = paid
        self.ready = ready
        self.delivered = delivered
    }
}
//
///// Allows to be used as a dynamic migration.
//extension Order: Migration { }
//
///// Allows ` to be encoded to and decoded from HTTP messages.
//extension Order: Content { }
//
///// Allows to be used as a dynamic parameter in route definitions.
//extension Order: Parameter { }
