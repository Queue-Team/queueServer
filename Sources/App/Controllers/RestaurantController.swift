import Vapor

/// Controls basic CRUD
final class RestaurantController {
    /// Returns a list
    func index(_ req: Request) throws -> Future<[Restaurant]> {
        return Restaurant.query(on: req).all()
    }

    /// Saves decoded to the database.
    func create(_ req: Request) throws -> Future<Restaurant> {
        return try req.content.decode(Restaurant.self).flatMap { restaurant in
            return restaurant.save(on: req)
        }
    }

    /// Deletes a param`.
    func delete(_ req: Request) throws -> Future<HTTPStatus> {
        return try req.parameters.next(Restaurant.self).flatMap { restaurant in
            return restaurant.delete(on: req)
        }.transform(to: .ok)
    }
}
