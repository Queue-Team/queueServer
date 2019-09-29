//
//  OrderController.swift
//  App
//
//  Created by Jaeson Booker on 9/29/19.
//

import Foundation
import Vapor

/// Controls basic CRUD
final class OrderController {
    /// Returns a list
    func index(_ req: Request) throws -> Future<[Order]> {
        return Order.query(on: req).all()
    }

    /// Saves decoded to the database.
    func create(_ req: Request) throws -> Future<Order> {
        return try req.content.decode(Order.self).flatMap { order in
            return order.save(on: req)
        }
    }

    /// Deletes a param`.
    func delete(_ req: Request) throws -> Future<HTTPStatus> {
        return try req.parameters.next(Order.self).flatMap { order in
            return order.delete(on: req)
        }.transform(to: .ok)
    }
}
