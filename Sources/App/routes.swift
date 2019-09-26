import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "Queue API"
    }
    
//    // Basic "Hello, world!" example
//    router.get("hello") { req in
//        return "Hello, world!"
//    }

    // Example of configuring a controller
    let restaurantController = RestaurantController()
    router.get("restaurants", use: restaurantController.index)
    router.post("restaurants", use: restaurantController.create)
    router.delete("restaurants", Restaurant.parameter, use: restaurantController.delete)
}
